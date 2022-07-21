package co.grandcircus.hotellab;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class HotelController {
	
	@Autowired
	private HotelRepository repo;
	
	@RequestMapping("/")
	public String listHotels(Model model) {
		
		List<Hotel> hotels = repo.findAll();

		model.addAttribute("hotels", hotels);
		return "hotels";
	}
	
	@PostMapping("searchbycity")
	public String cityHotels(@RequestParam String city, Model model) {
		
		model.addAttribute("city", city);
		List<Hotel> hotels = repo.findByCity(city, Sort.by("pricePerNight"));
		model.addAttribute("hotels", hotels);

		return "searchbycity";
		
	}
	

}
