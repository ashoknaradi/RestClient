package com.rest.controllers;

import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.client.RestTemplate;

import com.rest.pojos.Track;

@Controller
public class HomeClient {
	
	@RequestMapping(value="getTrackDetails") 
	public String getTrackDetails(Model model) {
		String uri = "http://localhost:8080/jersy/restTrack/getTrack?trackName=Jigelu Rani";    
	    RestTemplate restTemplate = new RestTemplate();
	    Track track = restTemplate.getForObject(uri, Track.class);
	    System.out.println("Result is ::: " + restTemplate.getForObject(uri, String.class));
	    model.addAttribute("trackDetails", track);
		return "TrackDetails";
	}
	
	@RequestMapping(value="registerTrackButton") 
	public String registerTrackButton() {
		return "RegisterTrack";
	}
	
	@RequestMapping(value="registerTrackDetails") 
	public String registerTrackDetails(Track track, Model model) {
		String uri = "http://localhost:8080/jersy/restTrack/registerTrack";    
	    RestTemplate restTemplate = new RestTemplate();
	    HttpHeaders requestHeaders = new HttpHeaders();
	    requestHeaders.setContentType(MediaType.APPLICATION_JSON);
	    if ((track.getTrackTitle() != null && track.getTrackSinger() != null && track.getTrackAlbum() != null) && 
			(track.getTrackTitle() != "" && track.getTrackSinger() != "" && track.getTrackAlbum() != ""))  {
	    	track.setTrackStatus("Track is Registered!.....");
		    HttpEntity<Track> entity = new HttpEntity<Track>(track, requestHeaders);
		    ResponseEntity<String> result = restTemplate.exchange(uri, HttpMethod.POST, entity, String.class);
			model.addAttribute("trackDetails", track);
		    System.out.println("Result is ::: " + result);
			return "TrackDetails";
	    } else {
			model.addAttribute("ErrorMessage", "Track can not be Registered!... Please provide valid details");
			return "Error";
	    }
	}
	
	/*public static void main(String[] args) {
		Track track = new Track();
		track.setTrackAlbum("Panjaa");
		track.setTrackSinger("Haricharan, Shweta Pandit");
		track.setTrackTitle("Ela ela naalo kalaa chupedela");
	    String uri = "http://localhost:8080/jersy/restTrack/registerTrack";    
	    RestTemplate restTemplate = new RestTemplate();
	    HttpHeaders requestHeaders = new HttpHeaders();
	    requestHeaders.setContentType(MediaType.APPLICATION_JSON);
	    HttpEntity<Track> entity = new HttpEntity<Track>(track, requestHeaders);
	    ResponseEntity<String> result = restTemplate.exchange(uri, HttpMethod.POST, entity, String.class);
	    System.out.println(result);
	}*/

}