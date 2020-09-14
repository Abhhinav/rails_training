# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Tag.delete_all
Post.delete_all
Category.delete_all

Tag.create(name: "Javascript")
Tag.create(name: "React")
Tag.create(name: "Ruby")
Tag.create(name: "Rails")

cat_web = Category.create(name: "Web", description: "All about Web", published: true)
cat_js = Category.create(name: "JavaScript", description: "All about JavaScript", published: true)
cat_prog = Category.create(name: "Programming", description: "All about Programming", published: false)


10.times do |i|
    Post.create(
        title: "Post #{i}",
        body: "Body of Post #{i} goes here...",
        published: true,
        category_id: i%2 ==0 ? cat_js.id : cat_prog.id
    )
end