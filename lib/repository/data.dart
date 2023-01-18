

import 'package:tiny_hack/models/user_model.dart';
import 'package:tiny_hack/models/user_post_model.dart';

class Data {
  static final List<UserPostModel> postList = [
    UserPostModel(
        name: "Creative 1",
        profileUrl: "assets/profile1.jpg",
        headline: "Playback Singer",
        tags: "#positivity #motivation",
        description: "Stay Strong!\n\nKeep Your Head Up!\n\nRejection means a better opportunity awaits you elsewhere.\n\nYour thoughts?",
        isVideoPost: false,
        comments: "100",
        video: "",
        isOnline: false,
        image: "assets/post1.jpg",
        likes: "800"
    ),
    UserPostModel(
        name: "Creative 2",
        profileUrl: "assets/profile2.jpg",
        headline: "NFT Artist",
        tags: "#republicday2023",
        description: "Without the sweat, toil and sacrifices of our heroes, we wouldn’t have this bright day that we celebrate today. Happy Independence Day.",
        isVideoPost: false,
        comments: "1k",
        video: "",
        isOnline: true,
        image: "assets/post2.jpg",
        likes: "20k"
    ),
    UserPostModel(
        name: "Creative 3",
        profileUrl: "assets/profile3.jpg",
        headline: "Logo Designer | Freelancer ",
        tags: "#creativity #logo",
        description: "Art is your friend",
        isVideoPost: false,
        comments: "100",
        video: "",
        isOnline: true,
        image: "assets/post3.jpg",
        likes: "230"
    ),
    UserPostModel(
        name: "Creative 4",
        profileUrl: "assets/profile4.jpg",
        headline: "LOGO DESIGN 🔹3D LOGO ANIMATION 🔹 DRAW CARTOON 🔹 BUSINESS CARD 🔹 PENCIL SKETCH 🔹 FLYER DESIGN 🔹 BROCHURE DESIGN 🔹",
        tags: "#Respect #SadioMane #PayBack #Love",
        description: "Rate my art work",
        isVideoPost: false,
        comments: "500",
        video: "",
        isOnline: false,
        image: "assets/post4.jpg",
        likes: "10k"
    ),
    UserPostModel(
        name: "Creative 5",
        profileUrl: "assets/profile5.jpg",
        headline: "Creative Content Writer | Content Specialist | Storyteller ",
        tags: "#Respect #SadioMane #PayBack #Love",
        description: "The world famous football player Sadio Mane of Senegal (West Africa), whose income in Indian rupees is around Rs. 1 crore 40 lacs per week, was seen in many places with a broken mobile phone. In an interview when asked about it, he said, I'll get it fixed. When asked, Why you are not buying a new one? He said, I could buy thousands of it, 10s Ferraris, couple of Jet Planes, Diamond watches that I can buy, but why do I need all of these? I saw poverty, so I couldn't learn, I built schools so that people could learn, I didn't have shoes, I played without shoes, I didn't have good clothes, I didn't have food. I have so much today that I want to share it with my people instead of showing off.Huge respect for him! We all must spend atleast some portion of our excess incomes in people who are deserving and can't even buy necessities.",
        isVideoPost: false,
        comments: "400",
        video: "videos/flutterIntro.mp4",
        isOnline: false,
        image: "assets/post5.jpg",
        likes: "1.1k"
    ),
    UserPostModel(
        name: "Creative 6",
        profileUrl: "assets/profile6.jpg",
        headline: "Tabla Player",
        tags: "#tabla #percussion #instruments #music",
        description: "Looking for a production house that requires a tabla player!",
        isVideoPost: false,
        comments: "20k",
        video: "videos/flutterIntro.mp4",
        isOnline: true,
        image: "assets/post6.jpg",
        likes: "101k"
    ),

  ];
  static final userProfile = UserModel(
      headline: "Bharatnatyam Dancer",
      profileUrl: "assets/profile.jpg",
      name: "Amir Khan",
      connections: "1,837",
      viewProfile: "300"
  );
}

