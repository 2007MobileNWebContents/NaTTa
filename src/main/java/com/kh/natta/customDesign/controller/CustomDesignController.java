package com.kh.natta.customDesign.controller;




import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.kh.natta.artist.domain.Artist;
import com.kh.natta.common.PageInfo;
import com.kh.natta.common.Pagination;
import com.kh.natta.customDesign.domain.CustomComment;
import com.kh.natta.customDesign.domain.CustomDesign;
import com.kh.natta.customDesign.domain.Search;
import com.kh.natta.customDesign.service.CustomDesignService;
import com.kh.natta.customer.domain.Customer;

@Controller
public class CustomDesignController {

	@Autowired
	private CustomDesignService cService;
	
	@RequestMapping(value="customDesignWriteView.na",method=RequestMethod.GET)
	public String customDesignWriteView() {
		return "customDesign/customDesignWriteForm";
	}
	
	// ์์ธ์กฐํ
	@RequestMapping(value="customDesignDetail.na",method=RequestMethod.GET)
	public ModelAndView customDetail(int customCode,ModelAndView mv, Integer page) {
		
		int currentPage = page != null ? page : 1;
		// ์กฐํ์ ์ฆ๊ฐ
		cService.addHits(customCode);
		// ์์ธ์กฐํ
		CustomDesign customDesign = cService.selectcustomDesign(customCode);
		if(customDesign!=null) {
			mv.addObject("customDesign",customDesign).addObject("currentPage",currentPage)
			.setViewName("customDesign/customDesignDetailView");
		}else {
			mv.addObject("msg","๋์๊ฒ์ํ ์์ธ์กฐํ ์คํจ");
			mv.setViewName("common/errorPage");
		}
		return mv;
	}
	
	// ๊ฒ์๊ธ ๋ฑ๋ก
	@RequestMapping(value="customDesignInsert.na",method=RequestMethod.POST)
	public String customDesignInsert(CustomDesign customDesign, Model model,HttpServletRequest request) {
		
		int result = cService.insertCustomDesign(customDesign);
		if(result>0) {
			return "redirect:customDesignList.na";
		}else {
			model.addAttribute("msg","๊ฒ์๊ธ ๋ฑ๋ก ์คํจ");
			return "common/errorPage";
		}
		
	}
	
	// ๊ฒ์๊ธ ๋ฆฌ์คํธ
	@RequestMapping(value="customDesignList.na", method=RequestMethod.GET)
	public ModelAndView customList(ModelAndView mv,@RequestParam(value="page", required=false) Integer page) {
		
		int currentPage = (page != null) ? page : 1;
		
		int listCount = cService.getListCount();
		
		PageInfo pi = Pagination.getPageInfo(currentPage, listCount);
		ArrayList<CustomDesign> cList = cService.selectList(pi);
		if(!cList.isEmpty()) {
			mv.addObject("cList",cList);
			mv.addObject("pi",pi);
			mv.setViewName("customDesign/customDesignListView");
		}else {
			mv.setViewName("customDesign/customDesignListView");
		}
		return mv;
	}
	// ๊ฒ์๊ธ ๊ฒ์
	@RequestMapping(value="customSearch.na",method=RequestMethod.GET)
	public String customSearch(Search search, Model model) {
		ArrayList<CustomDesign> searchList = cService.selectListSearch(search);
		if(!searchList.isEmpty()) {
			model.addAttribute("cList",searchList);
			model.addAttribute("search",search);
			return "customDesign/customDesignListView";
		}else {
			return "customDesign/customDesignListView";
		}
	}
	
	// ๊ฒ์ํ ์์?ํ๋ฉด
	@RequestMapping(value="customDesignModifyView.na",method=RequestMethod.GET)
	public String customDesignModifyView(int customCode, Model model,Integer page) {
		int currentPage = page != null ? page : 1;
		model.addAttribute("customDesign",cService.selectcustomDesign(customCode));
		model.addAttribute("currentPage",currentPage);
		return "customDesign/customDesignModifyForm";
	}
	
	// ๊ฒ์ํ ์์?
	@RequestMapping(value="customDesignModify.na",method=RequestMethod.POST)
	public String customDesignModifyForm(CustomDesign customDesign, Model model, HttpServletRequest request) {
		
		int result = cService.modifyCustomDesign(customDesign);
		if(result>0) {
			return "redirect:customDesignDetail.na?customCode="+customDesign.getCustomCode();
		}else {
			model.addAttribute("msg","๋ง์ถค๋์ ์์? ์คํจ");
			return "common/errorPage";
		}
	}
	
	// ๊ฒ์ํ ์ญ์?
	@RequestMapping(value="customDesignDelete.na",method=RequestMethod.GET)
	public String customDesignDelete(int customCode, Model model,Integer page) {
		int currentPage = page != null ? page : 1;
		
		int result = cService.deleteCustomDesign(customCode);
		if(result>0) {
			model.addAttribute("currentPage",currentPage);
			return "redirect:customDesignList.na";
		}else {
			return "common/errorPage";
		}
		
	}
	
	// ์ด๋ฏธ์ง์?์ฅ
    @RequestMapping(value="/mine/imageUpload.na", method = RequestMethod.POST)
    public void imageUpload(HttpServletRequest request,
            HttpServletResponse response, MultipartHttpServletRequest multiFile
            , @RequestParam MultipartFile upload) throws Exception{
        // ๋๋ค ๋ฌธ์ ์์ฑ
        UUID uid = UUID.randomUUID();
        
		/*
		 * String fileDir =
		 * "D:\\springworkspace\\NATTA(1207)\\src\\main\\webapp\\resources\\images\\customDesignImages\\";
		 */
        String fileDir = request.getSession().getServletContext().getRealPath("resources/images/customDesignImages");
        System.out.println(fileDir);
        
        OutputStream out = null;
        PrintWriter printWriter = null;
        
        //์ธ์ฝ๋ฉ
        response.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");
        
        try{
            
            //ํ์ผ ์ด๋ฆ ๊ฐ์?ธ์ค๊ธฐ
            String fileName = upload.getOriginalFilename();
            byte[] bytes = upload.getBytes();
            
            //์ด๋ฏธ์ง ๊ฒฝ๋ก ์์ฑ
            String path = fileDir+ "ckImage/";// fileDir๋ ์?์ญ ๋ณ์๋ผ ๊ทธ๋ฅ ์ด๋ฏธ์ง ๊ฒฝ๋ก ์ค์?ํด์ฃผ๋ฉด ๋๋ค.
            String ckUploadPath = path + uid + "_" + fileName;
            File folder = new File(path);
            
            //ํด๋น ๋๋?ํ?๋ฆฌ ํ์ธ
            if(!folder.exists()){
                try{
                    folder.mkdirs(); // ํด๋ ์์ฑ
                }catch(Exception e){
                    e.getStackTrace();
                }
            }
            
            out = new FileOutputStream(new File(ckUploadPath));
            out.write(bytes);
            out.flush(); // outputStram์ ์?์ฅ๋ ๋ฐ์ดํฐ๋ฅผ ์?์กํ๊ณ? ์ด๊ธฐํ
            
            String callback = request.getParameter("CKEditorFuncNum");
            printWriter = response.getWriter();
            String fileUrl = "/mine/ckImgSubmit.na?uid=" + uid + "&fileName=" + fileName;  // ์์ฑํ๋ฉด
            
        // ์๋ก๋์ ๋ฉ์์ง ์ถ๋?ฅ
          printWriter.println("{\"filename\" : \""+fileName+"\", \"uploaded\" : 1, \"url\":\""+fileUrl+"\"}");
          printWriter.flush();
            
        }catch(IOException e){
            e.printStackTrace();
        } finally {
          try {
           if(out != null) { out.close(); }
           if(printWriter != null) { printWriter.close(); }
          } catch(IOException e) { e.printStackTrace(); }
         }
        
        return;
    }
    
    // ์ด๋ฏธ์ง ์ถ๋?ฅ
    @RequestMapping(value="/mine/ckImgSubmit.na")
    public void ckSubmit(@RequestParam(value="uid") String uid
                            , @RequestParam(value="fileName") String fileName
                            , HttpServletRequest request, HttpServletResponse response)
                            throws ServletException, IOException{
    	
		/*
		 * String fileDir =
		 * "D:\\springworkspace\\NATTA(1207)\\src\\main\\webapp\\resources\\images\\customDesignImages\\";
		 */
    	String fileDir = request.getSession().getServletContext().getRealPath("resources/images/customDesignImages");
        
        //์๋ฒ์ ์?์ฅ๋ ์ด๋ฏธ์ง ๊ฒฝ๋ก
        String path = fileDir + "ckImage/";
    
        String sDirPath = path + uid + "_" + fileName;
    
        File imgFile = new File(sDirPath);
        
        //์ฌ์ง ์ด๋ฏธ์ง ์ฐพ์ง ๋ชปํ๋ ๊ฒฝ์ฐ ์์ธ์ฒ๋ฆฌ๋ก ๋น ์ด๋ฏธ์ง ํ์ผ์ ์ค์?ํ๋ค.
        if(imgFile.isFile()){
            byte[] buf = new byte[1024];
            int readByte = 0;
            int length = 0;
            byte[] imgBuf = null;
            
            FileInputStream fileInputStream = null;
            ByteArrayOutputStream outputStream = null;
            ServletOutputStream out = null;
            
            try{
                fileInputStream = new FileInputStream(imgFile);
                outputStream = new ByteArrayOutputStream();
                out = response.getOutputStream();
                
                while((readByte = fileInputStream.read(buf)) != -1){
                    outputStream.write(buf, 0, readByte);
                }
                
                imgBuf = outputStream.toByteArray();
                length = imgBuf.length;
                out.write(imgBuf, 0, length);
                out.flush();
                
            }catch(IOException e){
            	e.printStackTrace();
				/* Logger.info(e); */
            }finally {
                outputStream.close();
                fileInputStream.close();
                out.close();
            }
        }
    }
    
    // ๋๊ธ ์์ฑ
    @ResponseBody
    @RequestMapping(value="addComment.na",method=RequestMethod.POST)
    public String addComment(CustomComment customComment, HttpSession session) {
    	Artist loginArtist = (Artist)session.getAttribute("loginArtist");
    	String artistId = loginArtist.getArtistId();
    	String artistName = loginArtist.getArtistName();
    	customComment.setArtistId(artistId);
    	customComment.setArtistName(artistName);
    	System.out.println(customComment);
    	int result = cService.insertCustomComment(customComment);
    	if(result>0) {
    		return "success";
    	}else {
    		return "fail";
    	}
    }
    
    // ๋๊ธ ์กฐํ
    @ResponseBody
    @RequestMapping(value="commentList.na", method=RequestMethod.GET)
    public HashMap<String, Object> getCommentList(HttpServletResponse response, int customCode,@RequestParam(value="page", required=false) Integer page)throws Exception{
    	
    	int currentPage = (page != null) ? page : 1;
    	
    	int listCount = cService.getListCountComment(customCode);
    	
    	PageInfo pi = Pagination.getPageInfo(currentPage, listCount);
    	ArrayList<CustomComment> ccList = cService.selectListComment(customCode,pi);
    	for(CustomComment c : ccList) {
    		c.setcContents(URLEncoder.encode(c.getcContents(),"utf-8"));
    	}

    	HashMap<String, Object> commentMap = new HashMap<String, Object>();
    	commentMap.put("pi", pi);
    	commentMap.put("ccList", ccList);
    	
    	return commentMap;
    }
    
    // ๋๊ธ ์์?
    @ResponseBody
    @RequestMapping(value="customCommentModify.na",method=RequestMethod.POST)
	public String customCommentModify(CustomComment customComment) {
    	System.out.println(customComment);
    	int result = cService.modifyCustomComment(customComment);
    	if(result>0) {
    		return "success";
    	}else {
    		return "fail";
    	}
	}
    
    //๋๊ธ ์ญ์?
    @ResponseBody
    @RequestMapping(value="customCommentDelete.na",method=RequestMethod.POST)
    public String customCommentDelete(int customCCode) {
    	int result = cService.deleteCustomComment(customCCode);
    	if(result>0) {
    		return "success";
    	}else {
    		return "fail";
    	}
    }
}
