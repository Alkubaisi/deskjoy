MetaTagsHelper module
   Def meta_title
     Content_for?  ( : Meta_title ) ?  Content_for ( : meta_title ) : DEFAULT_META [ 'meta_title' ]
   End

   Def meta_description
     Content_for?  ( : Meta_description ) ?  Content_for ( : meta_description ) : DEFAULT_META [ 'meta_description' ]
   End

   Def meta_image
     Content_for?  ( : Meta_image ) ?  Content_for ( : meta_image ) : DEFAULT_META [ 'meta_image' ]
   End
 End
