# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#User
user = User.create(name: "Zafirah", email: "Zafirah@gmail.com", password: "121212", password_confirmation: "121212")
user = User.create(name: "Pachadella", email: "Pachadella@gmail.com", password: "121212", password_confirmation: "121212")
user = User.create(name: "Haniva", email: "haniva@gmail.com", password: "121212", password_confirmation: "121212")
user = User.create(name: "Erna", email: "ervianae@gmail.com", password: "121212", password_confirmation: "121212")
user = User.create(name: "Nindy", email: "nindya@gmail.com", password: "121212", password_confirmation: "121212")

#BlogPost
author1 = User.find_by_name("Zafirah")
author2 = User.find_by_name("Pachadella")
author3 = User.find_by_name("Haniva")
author4 = User.find_by_name("Erna")
author5 = User.find_by_name("Nindy")

blog_post = BlogPost.create(title: "Test", summary: "Lorem ipsum dolor sit amet.", content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ab hoc autem quaedam non melius quam veteres, quaedam omnino relicta. Cupiditates non Epicuri divisione finiebat, sed sua satietate. Illud quaero, quid ei, qui in voluptate summum bonum ponat, consentaneum sit dicere. Iam id ipsum absurdum, maximum malum neglegi. Quis est, qui non oderit libidinosam, protervam adolescentiam? Hoc ipsum elegantius poni meliusque potuit.

Sed tamen omne, quod de re bona dilucide dicitur, mihi praeclare dici videtur. Nam quibus rebus efficiuntur voluptates, eae non sunt in potestate sapientis. Illud mihi a te nimium festinanter dictum videtur, sapientis omnis esse semper beatos; Quibus rebus vita consentiens virtutibusque respondens recta et honesta et constans et naturae congruens existimari potest.

Cum praesertim illa perdiscere ludus esset. Ex ea difficultate illae fallaciloquae, ut ait Accius, malitiae natae sunt. Non est ista, inquam, Piso, magna dissensio. Ergo instituto veterum, quo etiam Stoici utuntur, hinc capiamus exordium. Quasi vero, inquit, perpetua oratio rhetorum solum, non etiam philosophorum sit. Neminem videbis ita laudatum, ut artifex callidus comparandarum voluptatum diceretur. Itaque fecimus.

Satisne vobis videor pro meo iure in vestris auribus commentatus? Hoc ne statuam quidem dicturam pater aiebat, si loqui posset. Duo Reges: constructio interrete. Hoc enim constituto in philosophia constituta sunt omnia. Si quidem, inquit, tollerem, sed relinquo.

Quamquam haec quidem praeposita recte et reiecta dicere licebit. Quid censes in Latino fore? Quod non faceret, si in voluptate summum bonum poneret. Ut non sine causa ex iis memoriae ducta sit disciplina.
", user: author1, title_image_url: "http://www.soundshore.net/hs-fs/hubfs/soundshore-site/header-img.jpg?t=1466255316906&width=1600&name=header-img.jpg" )

blog_post = BlogPost.create(title: "Rails", summary: "Lorem ipsum dolor sit amet.", content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ab hoc autem quaedam non melius quam veteres, quaedam omnino relicta. Cupiditates non Epicuri divisione finiebat, sed sua satietate. Illud quaero, quid ei, qui in voluptate summum bonum ponat, consentaneum sit dicere. Iam id ipsum absurdum, maximum malum neglegi. Quis est, qui non oderit libidinosam, protervam adolescentiam? Hoc ipsum elegantius poni meliusque potuit.

Sed tamen omne, quod de re bona dilucide dicitur, mihi praeclare dici videtur. Nam quibus rebus efficiuntur voluptates, eae non sunt in potestate sapientis. Illud mihi a te nimium festinanter dictum videtur, sapientis omnis esse semper beatos; Quibus rebus vita consentiens virtutibusque respondens recta et honesta et constans et naturae congruens existimari potest.

Cum praesertim illa perdiscere ludus esset. Ex ea difficultate illae fallaciloquae, ut ait Accius, malitiae natae sunt. Non est ista, inquam, Piso, magna dissensio. Ergo instituto veterum, quo etiam Stoici utuntur, hinc capiamus exordium. Quasi vero, inquit, perpetua oratio rhetorum solum, non etiam philosophorum sit. Neminem videbis ita laudatum, ut artifex callidus comparandarum voluptatum diceretur. Itaque fecimus.

Satisne vobis videor pro meo iure in vestris auribus commentatus? Hoc ne statuam quidem dicturam pater aiebat, si loqui posset. Duo Reges: constructio interrete. Hoc enim constituto in philosophia constituta sunt omnia. Si quidem, inquit, tollerem, sed relinquo.

Quamquam haec quidem praeposita recte et reiecta dicere licebit. Quid censes in Latino fore? Quod non faceret, si in voluptate summum bonum poneret. Ut non sine causa ex iis memoriae ducta sit disciplina.
", user: author4 , title_image_url: "http://www.soundshore.net/hs-fs/hubfs/soundshore-site/header-img.jpg?t=1466255316906&width=1600&name=header-img.jpg" )

blog_post = BlogPost.create(title: "Introduce Ruby on Rails", summary: "Lorem ipsum dolor sit amet.", content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ab hoc autem quaedam non melius quam veteres, quaedam omnino relicta. Cupiditates non Epicuri divisione finiebat, sed sua satietate. Illud quaero, quid ei, qui in voluptate summum bonum ponat, consentaneum sit dicere. Iam id ipsum absurdum, maximum malum neglegi. Quis est, qui non oderit libidinosam, protervam adolescentiam? Hoc ipsum elegantius poni meliusque potuit.

Sed tamen omne, quod de re bona dilucide dicitur, mihi praeclare dici videtur. Nam quibus rebus efficiuntur voluptates, eae non sunt in potestate sapientis. Illud mihi a te nimium festinanter dictum videtur, sapientis omnis esse semper beatos; Quibus rebus vita consentiens virtutibusque respondens recta et honesta et constans et naturae congruens existimari potest.

Cum praesertim illa perdiscere ludus esset. Ex ea difficultate illae fallaciloquae, ut ait Accius, malitiae natae sunt. Non est ista, inquam, Piso, magna dissensio. Ergo instituto veterum, quo etiam Stoici utuntur, hinc capiamus exordium. Quasi vero, inquit, perpetua oratio rhetorum solum, non etiam philosophorum sit. Neminem videbis ita laudatum, ut artifex callidus comparandarum voluptatum diceretur. Itaque fecimus.

Satisne vobis videor pro meo iure in vestris auribus commentatus? Hoc ne statuam quidem dicturam pater aiebat, si loqui posset. Duo Reges: constructio interrete. Hoc enim constituto in philosophia constituta sunt omnia. Si quidem, inquit, tollerem, sed relinquo.

Quamquam haec quidem praeposita recte et reiecta dicere licebit. Quid censes in Latino fore? Quod non faceret, si in voluptate summum bonum poneret. Ut non sine causa ex iis memoriae ducta sit disciplina.
", user: author4, title_image_url: "http://www.soundshore.net/hs-fs/hubfs/soundshore-site/header-img.jpg?t=1466255316906&width=1600&name=header-img.jpg" )

blog_post = BlogPost.create(title: "My First Job", summary: "Lorem ipsum dolor sit amet.", content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ab hoc autem quaedam non melius quam veteres, quaedam omnino relicta. Cupiditates non Epicuri divisione finiebat, sed sua satietate. Illud quaero, quid ei, qui in voluptate summum bonum ponat, consentaneum sit dicere. Iam id ipsum absurdum, maximum malum neglegi. Quis est, qui non oderit libidinosam, protervam adolescentiam? Hoc ipsum elegantius poni meliusque potuit.

Sed tamen omne, quod de re bona dilucide dicitur, mihi praeclare dici videtur. Nam quibus rebus efficiuntur voluptates, eae non sunt in potestate sapientis. Illud mihi a te nimium festinanter dictum videtur, sapientis omnis esse semper beatos; Quibus rebus vita consentiens virtutibusque respondens recta et honesta et constans et naturae congruens existimari potest.

Cum praesertim illa perdiscere ludus esset. Ex ea difficultate illae fallaciloquae, ut ait Accius, malitiae natae sunt. Non est ista, inquam, Piso, magna dissensio. Ergo instituto veterum, quo etiam Stoici utuntur, hinc capiamus exordium. Quasi vero, inquit, perpetua oratio rhetorum solum, non etiam philosophorum sit. Neminem videbis ita laudatum, ut artifex callidus comparandarum voluptatum diceretur. Itaque fecimus.

Satisne vobis videor pro meo iure in vestris auribus commentatus? Hoc ne statuam quidem dicturam pater aiebat, si loqui posset. Duo Reges: constructio interrete. Hoc enim constituto in philosophia constituta sunt omnia. Si quidem, inquit, tollerem, sed relinquo.

Quamquam haec quidem praeposita recte et reiecta dicere licebit. Quid censes in Latino fore? Quod non faceret, si in voluptate summum bonum poneret. Ut non sine causa ex iis memoriae ducta sit disciplina.
", user: author1, title_image_url: "http://www.soundshore.net/hs-fs/hubfs/soundshore-site/header-img.jpg?t=1466255316906&width=1600&name=header-img.jpg" )

blog_post = BlogPost.create(title: "Training Web Developer", summary: "Lorem ipsum dolor sit amet.", content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ab hoc autem quaedam non melius quam veteres, quaedam omnino relicta. Cupiditates non Epicuri divisione finiebat, sed sua satietate. Illud quaero, quid ei, qui in voluptate summum bonum ponat, consentaneum sit dicere. Iam id ipsum absurdum, maximum malum neglegi. Quis est, qui non oderit libidinosam, protervam adolescentiam? Hoc ipsum elegantius poni meliusque potuit.

Sed tamen omne, quod de re bona dilucide dicitur, mihi praeclare dici videtur. Nam quibus rebus efficiuntur voluptates, eae non sunt in potestate sapientis. Illud mihi a te nimium festinanter dictum videtur, sapientis omnis esse semper beatos; Quibus rebus vita consentiens virtutibusque respondens recta et honesta et constans et naturae congruens existimari potest.

Cum praesertim illa perdiscere ludus esset. Ex ea difficultate illae fallaciloquae, ut ait Accius, malitiae natae sunt. Non est ista, inquam, Piso, magna dissensio. Ergo instituto veterum, quo etiam Stoici utuntur, hinc capiamus exordium. Quasi vero, inquit, perpetua oratio rhetorum solum, non etiam philosophorum sit. Neminem videbis ita laudatum, ut artifex callidus comparandarum voluptatum diceretur. Itaque fecimus.

Satisne vobis videor pro meo iure in vestris auribus commentatus? Hoc ne statuam quidem dicturam pater aiebat, si loqui posset. Duo Reges: constructio interrete. Hoc enim constituto in philosophia constituta sunt omnia. Si quidem, inquit, tollerem, sed relinquo.

Quamquam haec quidem praeposita recte et reiecta dicere licebit. Quid censes in Latino fore? Quod non faceret, si in voluptate summum bonum poneret. Ut non sine causa ex iis memoriae ducta sit disciplina.
", user: author2 , title_image_url: "http://www.soundshore.net/hs-fs/hubfs/soundshore-site/header-img.jpg?t=1466255316906&width=1600&name=header-img.jpg" )

blog_post = BlogPost.create(title: "Ukirama Company", summary: "Lorem ipsum dolor sit amet.", content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ab hoc autem quaedam non melius quam veteres, quaedam omnino relicta. Cupiditates non Epicuri divisione finiebat, sed sua satietate. Illud quaero, quid ei, qui in voluptate summum bonum ponat, consentaneum sit dicere. Iam id ipsum absurdum, maximum malum neglegi. Quis est, qui non oderit libidinosam, protervam adolescentiam? Hoc ipsum elegantius poni meliusque potuit.

Sed tamen omne, quod de re bona dilucide dicitur, mihi praeclare dici videtur. Nam quibus rebus efficiuntur voluptates, eae non sunt in potestate sapientis. Illud mihi a te nimium festinanter dictum videtur, sapientis omnis esse semper beatos; Quibus rebus vita consentiens virtutibusque respondens recta et honesta et constans et naturae congruens existimari potest.

Cum praesertim illa perdiscere ludus esset. Ex ea difficultate illae fallaciloquae, ut ait Accius, malitiae natae sunt. Non est ista, inquam, Piso, magna dissensio. Ergo instituto veterum, quo etiam Stoici utuntur, hinc capiamus exordium. Quasi vero, inquit, perpetua oratio rhetorum solum, non etiam philosophorum sit. Neminem videbis ita laudatum, ut artifex callidus comparandarum voluptatum diceretur. Itaque fecimus.

Satisne vobis videor pro meo iure in vestris auribus commentatus? Hoc ne statuam quidem dicturam pater aiebat, si loqui posset. Duo Reges: constructio interrete. Hoc enim constituto in philosophia constituta sunt omnia. Si quidem, inquit, tollerem, sed relinquo.

Quamquam haec quidem praeposita recte et reiecta dicere licebit. Quid censes in Latino fore? Quod non faceret, si in voluptate summum bonum poneret. Ut non sine causa ex iis memoriae ducta sit disciplina.
", user: author3, title_image_url: "http://www.soundshore.net/hs-fs/hubfs/soundshore-site/header-img.jpg?t=1466255316906&width=1600&name=header-img.jpg" )

blog_post = BlogPost.create(title: "Ukirama ERP", summary: "Lorem ipsum dolor sit amet.", content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ab hoc autem quaedam non melius quam veteres, quaedam omnino relicta. Cupiditates non Epicuri divisione finiebat, sed sua satietate. Illud quaero, quid ei, qui in voluptate summum bonum ponat, consentaneum sit dicere. Iam id ipsum absurdum, maximum malum neglegi. Quis est, qui non oderit libidinosam, protervam adolescentiam? Hoc ipsum elegantius poni meliusque potuit.

Sed tamen omne, quod de re bona dilucide dicitur, mihi praeclare dici videtur. Nam quibus rebus efficiuntur voluptates, eae non sunt in potestate sapientis. Illud mihi a te nimium festinanter dictum videtur, sapientis omnis esse semper beatos; Quibus rebus vita consentiens virtutibusque respondens recta et honesta et constans et naturae congruens existimari potest.

Cum praesertim illa perdiscere ludus esset. Ex ea difficultate illae fallaciloquae, ut ait Accius, malitiae natae sunt. Non est ista, inquam, Piso, magna dissensio. Ergo instituto veterum, quo etiam Stoici utuntur, hinc capiamus exordium. Quasi vero, inquit, perpetua oratio rhetorum solum, non etiam philosophorum sit. Neminem videbis ita laudatum, ut artifex callidus comparandarum voluptatum diceretur. Itaque fecimus.

Satisne vobis videor pro meo iure in vestris auribus commentatus? Hoc ne statuam quidem dicturam pater aiebat, si loqui posset. Duo Reges: constructio interrete. Hoc enim constituto in philosophia constituta sunt omnia. Si quidem, inquit, tollerem, sed relinquo.

Quamquam haec quidem praeposita recte et reiecta dicere licebit. Quid censes in Latino fore? Quod non faceret, si in voluptate summum bonum poneret. Ut non sine causa ex iis memoriae ducta sit disciplina.
", user: author2, title_image_url: "http://www.soundshore.net/hs-fs/hubfs/soundshore-site/header-img.jpg?t=1466255316906&width=1600&name=header-img.jpg" )

blog_post = BlogPost.create(title: "My New World", summary: "Lorem ipsum dolor sit amet.", content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ab hoc autem quaedam non melius quam veteres, quaedam omnino relicta. Cupiditates non Epicuri divisione finiebat, sed sua satietate. Illud quaero, quid ei, qui in voluptate summum bonum ponat, consentaneum sit dicere. Iam id ipsum absurdum, maximum malum neglegi. Quis est, qui non oderit libidinosam, protervam adolescentiam? Hoc ipsum elegantius poni meliusque potuit.

Sed tamen omne, quod de re bona dilucide dicitur, mihi praeclare dici videtur. Nam quibus rebus efficiuntur voluptates, eae non sunt in potestate sapientis. Illud mihi a te nimium festinanter dictum videtur, sapientis omnis esse semper beatos; Quibus rebus vita consentiens virtutibusque respondens recta et honesta et constans et naturae congruens existimari potest.

Cum praesertim illa perdiscere ludus esset. Ex ea difficultate illae fallaciloquae, ut ait Accius, malitiae natae sunt. Non est ista, inquam, Piso, magna dissensio. Ergo instituto veterum, quo etiam Stoici utuntur, hinc capiamus exordium. Quasi vero, inquit, perpetua oratio rhetorum solum, non etiam philosophorum sit. Neminem videbis ita laudatum, ut artifex callidus comparandarum voluptatum diceretur. Itaque fecimus.

Satisne vobis videor pro meo iure in vestris auribus commentatus? Hoc ne statuam quidem dicturam pater aiebat, si loqui posset. Duo Reges: constructio interrete. Hoc enim constituto in philosophia constituta sunt omnia. Si quidem, inquit, tollerem, sed relinquo.

Quamquam haec quidem praeposita recte et reiecta dicere licebit. Quid censes in Latino fore? Quod non faceret, si in voluptate summum bonum poneret. Ut non sine causa ex iis memoriae ducta sit disciplina.
", user: author4, title_image_url: "http://www.soundshore.net/hs-fs/hubfs/soundshore-site/header-img.jpg?t=1466255316906&width=1600&name=header-img.jpg" )

blog_post = BlogPost.create(title: "My Beloved Pet", summary: "Lorem ipsum dolor sit amet.", content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ab hoc autem quaedam non melius quam veteres, quaedam omnino relicta. Cupiditates non Epicuri divisione finiebat, sed sua satietate. Illud quaero, quid ei, qui in voluptate summum bonum ponat, consentaneum sit dicere. Iam id ipsum absurdum, maximum malum neglegi. Quis est, qui non oderit libidinosam, protervam adolescentiam? Hoc ipsum elegantius poni meliusque potuit.

Sed tamen omne, quod de re bona dilucide dicitur, mihi praeclare dici videtur. Nam quibus rebus efficiuntur voluptates, eae non sunt in potestate sapientis. Illud mihi a te nimium festinanter dictum videtur, sapientis omnis esse semper beatos; Quibus rebus vita consentiens virtutibusque respondens recta et honesta et constans et naturae congruens existimari potest.

Cum praesertim illa perdiscere ludus esset. Ex ea difficultate illae fallaciloquae, ut ait Accius, malitiae natae sunt. Non est ista, inquam, Piso, magna dissensio. Ergo instituto veterum, quo etiam Stoici utuntur, hinc capiamus exordium. Quasi vero, inquit, perpetua oratio rhetorum solum, non etiam philosophorum sit. Neminem videbis ita laudatum, ut artifex callidus comparandarum voluptatum diceretur. Itaque fecimus.

Satisne vobis videor pro meo iure in vestris auribus commentatus? Hoc ne statuam quidem dicturam pater aiebat, si loqui posset. Duo Reges: constructio interrete. Hoc enim constituto in philosophia constituta sunt omnia. Si quidem, inquit, tollerem, sed relinquo.

Quamquam haec quidem praeposita recte et reiecta dicere licebit. Quid censes in Latino fore? Quod non faceret, si in voluptate summum bonum poneret. Ut non sine causa ex iis memoriae ducta sit disciplina.
", user: author5 , title_image_url: "http://www.soundshore.net/hs-fs/hubfs/soundshore-site/header-img.jpg?t=1466255316906&width=1600&name=header-img.jpg" )

blog_post = BlogPost.create(title: "Happy Sunday", summary: "Lorem ipsum dolor sit amet.", content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ab hoc autem quaedam non melius quam veteres, quaedam omnino relicta. Cupiditates non Epicuri divisione finiebat, sed sua satietate. Illud quaero, quid ei, qui in voluptate summum bonum ponat, consentaneum sit dicere. Iam id ipsum absurdum, maximum malum neglegi. Quis est, qui non oderit libidinosam, protervam adolescentiam? Hoc ipsum elegantius poni meliusque potuit.

Sed tamen omne, quod de re bona dilucide dicitur, mihi praeclare dici videtur. Nam quibus rebus efficiuntur voluptates, eae non sunt in potestate sapientis. Illud mihi a te nimium festinanter dictum videtur, sapientis omnis esse semper beatos; Quibus rebus vita consentiens virtutibusque respondens recta et honesta et constans et naturae congruens existimari potest.

Cum praesertim illa perdiscere ludus esset. Ex ea difficultate illae fallaciloquae, ut ait Accius, malitiae natae sunt. Non est ista, inquam, Piso, magna dissensio. Ergo instituto veterum, quo etiam Stoici utuntur, hinc capiamus exordium. Quasi vero, inquit, perpetua oratio rhetorum solum, non etiam philosophorum sit. Neminem videbis ita laudatum, ut artifex callidus comparandarum voluptatum diceretur. Itaque fecimus.

Satisne vobis videor pro meo iure in vestris auribus commentatus? Hoc ne statuam quidem dicturam pater aiebat, si loqui posset. Duo Reges: constructio interrete. Hoc enim constituto in philosophia constituta sunt omnia. Si quidem, inquit, tollerem, sed relinquo.

Quamquam haec quidem praeposita recte et reiecta dicere licebit. Quid censes in Latino fore? Quod non faceret, si in voluptate summum bonum poneret. Ut non sine causa ex iis memoriae ducta sit disciplina.
", user: author4 , title_image_url: "http://www.soundshore.net/hs-fs/hubfs/soundshore-site/header-img.jpg?t=1466255316906&width=1600&name=header-img.jpg" )

#Tag
tag = Tag.create(tag_name: "Rails")
tag = Tag.create(tag_name: "Ruby")
tag = Tag.create(tag_name: "Web")
tag = Tag.create(tag_name: "Developer")
tag = Tag.create(tag_name: "Pet")
tag = Tag.create(tag_name: "Training")
tag = Tag.create(tag_name: "Sport")
tag = Tag.create(tag_name: "Ukirama")
tag = Tag.create(tag_name: "ERP")
tag = Tag.create(tag_name: "Job")

#TagBlog
x1 = BlogPost.find_by_title("Test")
x2 = BlogPost.find_by_title("Rails")
x3 = BlogPost.find_by_title("Introduce Ruby on Rails")
x4 = BlogPost.find_by_title("My First Job")
x5 = BlogPost.find_by_title("Training Web Developer")
x6 = BlogPost.find_by_title("Ukirama Company")
x7 = BlogPost.find_by_title("Ukirama ERP")
x8 = BlogPost.find_by_title("My New World")
x9 = BlogPost.find_by_title("My Beloved Pet")
x10 = BlogPost.find_by_title("happy Sunday")

y1 = Tag.find_by_tag_name("rails")
y2 = Tag.find_by_tag_name("web")
y3 = Tag.find_by_tag_name("ruby")
y4 = Tag.find_by_tag_name("Pet")
y5 = Tag.find_by_tag_name("ukirama")

tag_blog = TagBlog.create(blog_post: x1, tag: y1)
tag_blog = TagBlog.create(blog_post: x1, tag: y3)
tag_blog = TagBlog.create(blog_post: x2, tag: y1)
tag_blog = TagBlog.create(blog_post: x2, tag: y5)
tag_blog = TagBlog.create(blog_post: x3, tag: y2)
tag_blog = TagBlog.create(blog_post: x3, tag: y3)
tag_blog = TagBlog.create(blog_post: x4, tag: y2)
tag_blog = TagBlog.create(blog_post: x4, tag: y5)
tag_blog = TagBlog.create(blog_post: x5, tag: y2)
tag_blog = TagBlog.create(blog_post: x5, tag: y5)
tag_blog = TagBlog.create(blog_post: x6, tag: y3)
tag_blog = TagBlog.create(blog_post: x7, tag: y1)
tag_blog = TagBlog.create(blog_post: x8, tag: y5)
tag_blog = TagBlog.create(blog_post: x9, tag: y2)
tag_blog = TagBlog.create(blog_post: x10, tag: y4)
