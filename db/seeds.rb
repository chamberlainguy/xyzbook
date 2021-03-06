# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


User.destroy_all
u1 = User.create firstname: 'React',  surname: 'Hipster', 
				email: 'react@gmail.com', password: 'chicken',
				pic: 'http://social-vibez.com/file/pic/photo/605ac7e4c16b8a013b4779b81f883e66_240.jpg'
u2 = User.create firstname: 'Angela', surname: 'Molloy', 
				email: 'angela@gmail.com', password: 'chicken',
				pic: 'http://www.lawyersweekly.com.au/images/LW_Media_Library/594partner-profile-pic-An.jpg'
u3 = User.create firstname: 'Simon', surname: 'Wong', 
				email: 'simon@gmail.com', password: 'chicken',
				pic: 'https://upload.wikimedia.org/wikipedia/en/7/70/Shawn_Tok_Profile.jpg'
		
u1.friends << u2 << u3
u2.friends << u1
u3.friends << u1

Status.destroy_all
s1 = Status.create blurb: 'Just a test status update', likes: 101, dislikes: 202
s2 = Status.create blurb: 'Im in Paris and I love it', likes: 101, dislikes: 202

u1.ownedby_statuses << s1
u1.postedby_statuses << s1

u2.ownedby_statuses << s2
u2.postedby_statuses << s2

Comment.destroy_all
c1 = Comment.create blurb: 'Hi, React how have you been'
c2 = Comment.create blurb: 'I have been great too'

s1.comments << c1 << c2

u2.comments << c1
u3.comments << c2

Picture.destroy_all
p1 = Picture.create url: 'https://pbs.twimg.com/profile_images/378800000532546226/dbe5f0727b69487016ffd67a6689e75a.jpeg'
u1.pictures << p1

p2 = Picture.create url: 'http://i.ytimg.com/vi/tntOCGkgt98/maxresdefault.jpg'
s1.pictures << p2

p3 = Picture.create url: 'http://s.hswstatic.com/gif/whiskers-sam.jpg'
u1.pictures << p3

p4 = Picture.create url: 'http://images5.fanpop.com/image/photos/28500000/Cats-cats-28572014-1600-1200.jpg'
u2.pictures << p4

p5 = Picture.create url: 'http://i.ytimg.com/vi/mSFTRoBY99s/hqdefault.jpg'
u3.pictures << p5

p6 = Picture.create url: 'http://res.cloudinary.com/dmsp719b6/image/upload/v1445476055/19-09-2014-1411113187_mhhwed.jpg'
u1.pictures << p6





















