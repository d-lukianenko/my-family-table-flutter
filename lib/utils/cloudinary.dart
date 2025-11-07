const _base = 'https://res.cloudinary.com/myfamilytable/image/upload';
const _transform = 'w_800,c_fill,q_auto,f_auto';

String cloudinaryUrl(String publicId) => '$_base/$_transform/$publicId.jpg';
