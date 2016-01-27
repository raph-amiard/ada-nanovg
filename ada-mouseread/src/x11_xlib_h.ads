pragma Ada_2005;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;
with Interfaces.C.Strings;
with X11_X_h;
with System;

package X11_Xlib_h is

   --  unsupported macro: XlibSpecificationRelease 6
   --  unsupported macro: X_HAVE_UTF8_STRING 1
   --  unsupported macro: Bool int
   --  unsupported macro: Status int
   --  unsupported macro: True 1
   --  unsupported macro: False 0
   --  unsupported macro: QueuedAlready 0
   --  unsupported macro: QueuedAfterReading 1
   --  unsupported macro: QueuedAfterFlush 2
   --  arg-macro: function ConnectionNumber (((_XPrivDisplay)dpy).fd
   --    return ((_XPrivDisplay)dpy).fd;
   --  arg-macro: function RootWindow (ScreenOfDisplay(dpy,scr).root
   --    return ScreenOfDisplay(dpy,scr).root;
   --  arg-macro: function DefaultScreen (((_XPrivDisplay)dpy).default_screen
   --    return ((_XPrivDisplay)dpy).default_screen;
   --  arg-macro: function DefaultRootWindow (ScreenOfDisplay(dpy,DefaultScreen(dpy)).root
   --    return ScreenOfDisplay(dpy,DefaultScreen(dpy)).root;
   --  arg-macro: function DefaultVisual (ScreenOfDisplay(dpy,scr).root_visual
   --    return ScreenOfDisplay(dpy,scr).root_visual;
   --  arg-macro: function DefaultGC (ScreenOfDisplay(dpy,scr).default_gc
   --    return ScreenOfDisplay(dpy,scr).default_gc;
   --  arg-macro: function BlackPixel (ScreenOfDisplay(dpy,scr).black_pixel
   --    return ScreenOfDisplay(dpy,scr).black_pixel;
   --  arg-macro: function WhitePixel (ScreenOfDisplay(dpy,scr).white_pixel
   --    return ScreenOfDisplay(dpy,scr).white_pixel;
   --  unsupported macro: AllPlanes ((unsigned long)~0L)
   --  arg-macro: function QLength (((_XPrivDisplay)dpy).qlen
   --    return ((_XPrivDisplay)dpy).qlen;
   --  arg-macro: function DisplayWidth (ScreenOfDisplay(dpy,scr).width
   --    return ScreenOfDisplay(dpy,scr).width;
   --  arg-macro: function DisplayHeight (ScreenOfDisplay(dpy,scr).height
   --    return ScreenOfDisplay(dpy,scr).height;
   --  arg-macro: function DisplayWidthMM (ScreenOfDisplay(dpy,scr).mwidth
   --    return ScreenOfDisplay(dpy,scr).mwidth;
   --  arg-macro: function DisplayHeightMM (ScreenOfDisplay(dpy,scr).mheight
   --    return ScreenOfDisplay(dpy,scr).mheight;
   --  arg-macro: function DisplayPlanes (ScreenOfDisplay(dpy,scr).root_depth
   --    return ScreenOfDisplay(dpy,scr).root_depth;
   --  arg-macro: function DisplayCells (DefaultVisual(dpy,scr).map_entries
   --    return DefaultVisual(dpy,scr).map_entries;
   --  arg-macro: function ScreenCount (((_XPrivDisplay)dpy).nscreens
   --    return ((_XPrivDisplay)dpy).nscreens;
   --  arg-macro: function ServerVendor (((_XPrivDisplay)dpy).vendor
   --    return ((_XPrivDisplay)dpy).vendor;
   --  arg-macro: function ProtocolVersion (((_XPrivDisplay)dpy).proto_major_version
   --    return ((_XPrivDisplay)dpy).proto_major_version;
   --  arg-macro: function ProtocolRevision (((_XPrivDisplay)dpy).proto_minor_version
   --    return ((_XPrivDisplay)dpy).proto_minor_version;
   --  arg-macro: function VendorRelease (((_XPrivDisplay)dpy).release
   --    return ((_XPrivDisplay)dpy).release;
   --  arg-macro: function DisplayString (((_XPrivDisplay)dpy).display_name
   --    return ((_XPrivDisplay)dpy).display_name;
   --  arg-macro: function DefaultDepth (ScreenOfDisplay(dpy,scr).root_depth
   --    return ScreenOfDisplay(dpy,scr).root_depth;
   --  arg-macro: function DefaultColormap (ScreenOfDisplay(dpy,scr).cmap
   --    return ScreenOfDisplay(dpy,scr).cmap;
   --  arg-macro: function BitmapUnit (((_XPrivDisplay)dpy).bitmap_unit
   --    return ((_XPrivDisplay)dpy).bitmap_unit;
   --  arg-macro: function BitmapBitOrder (((_XPrivDisplay)dpy).bitmap_bit_order
   --    return ((_XPrivDisplay)dpy).bitmap_bit_order;
   --  arg-macro: function BitmapPad (((_XPrivDisplay)dpy).bitmap_pad
   --    return ((_XPrivDisplay)dpy).bitmap_pad;
   --  arg-macro: function ImageByteOrder (((_XPrivDisplay)dpy).byte_order
   --    return ((_XPrivDisplay)dpy).byte_order;
   --  arg-macro: function NextRequest (((_XPrivDisplay)dpy).request + 1
   --    return ((_XPrivDisplay)dpy).request + 1;
   --  arg-macro: function LastKnownRequestProcessed (((_XPrivDisplay)dpy).last_request_read
   --    return ((_XPrivDisplay)dpy).last_request_read;
   --  arg-macro: function ScreenOfDisplay (and((_XPrivDisplay)dpy).screens(scr)
   --    return and((_XPrivDisplay)dpy).screens(scr);
   --  arg-macro: procedure DefaultScreenOfDisplay ScreenOfDisplay(dpy,DefaultScreen(dpy))
   --    ScreenOfDisplay(dpy,DefaultScreen(dpy))
   --  arg-macro: function DisplayOfScreen ((s).display
   --    return (s).display;
   --  arg-macro: function RootWindowOfScreen ((s).root
   --    return (s).root;
   --  arg-macro: function BlackPixelOfScreen ((s).black_pixel
   --    return (s).black_pixel;
   --  arg-macro: function WhitePixelOfScreen ((s).white_pixel
   --    return (s).white_pixel;
   --  arg-macro: function DefaultColormapOfScreen ((s).cmap
   --    return (s).cmap;
   --  arg-macro: function DefaultDepthOfScreen ((s).root_depth
   --    return (s).root_depth;
   --  arg-macro: function DefaultGCOfScreen ((s).default_gc
   --    return (s).default_gc;
   --  arg-macro: function DefaultVisualOfScreen ((s).root_visual
   --    return (s).root_visual;
   --  arg-macro: function WidthOfScreen ((s).width
   --    return (s).width;
   --  arg-macro: function HeightOfScreen ((s).height
   --    return (s).height;
   --  arg-macro: function WidthMMOfScreen ((s).mwidth
   --    return (s).mwidth;
   --  arg-macro: function HeightMMOfScreen ((s).mheight
   --    return (s).mheight;
   --  arg-macro: function PlanesOfScreen ((s).root_depth
   --    return (s).root_depth;
   --  arg-macro: function CellsOfScreen (DefaultVisualOfScreen((s)).map_entries
   --    return DefaultVisualOfScreen((s)).map_entries;
   --  arg-macro: function MinCmapsOfScreen ((s).min_maps
   --    return (s).min_maps;
   --  arg-macro: function MaxCmapsOfScreen ((s).max_maps
   --    return (s).max_maps;
   --  arg-macro: function DoesSaveUnders ((s).save_unders
   --    return (s).save_unders;
   --  arg-macro: function DoesBackingStore ((s).backing_store
   --    return (s).backing_store;
   --  arg-macro: function EventMaskOfScreen ((s).root_input_mask
   --    return (s).root_input_mask;
   --  arg-macro: function XAllocID ((*((_XPrivDisplay)dpy).resource_alloc)((dpy))
   --    return (*((_XPrivDisplay)dpy).resource_alloc)((dpy));
   --  unsupported macro: XNRequiredCharSet "requiredCharSet"
   --  unsupported macro: XNQueryOrientation "queryOrientation"
   --  unsupported macro: XNBaseFontName "baseFontName"
   --  unsupported macro: XNOMAutomatic "omAutomatic"
   --  unsupported macro: XNMissingCharSet "missingCharSet"
   --  unsupported macro: XNDefaultString "defaultString"
   --  unsupported macro: XNOrientation "orientation"
   --  unsupported macro: XNDirectionalDependentDrawing "directionalDependentDrawing"
   --  unsupported macro: XNContextualDrawing "contextualDrawing"
   --  unsupported macro: XNFontInfo "fontInfo"
   --  unsupported macro: XIMPreeditArea 0x0001L
   --  unsupported macro: XIMPreeditCallbacks 0x0002L
   --  unsupported macro: XIMPreeditPosition 0x0004L
   --  unsupported macro: XIMPreeditNothing 0x0008L
   --  unsupported macro: XIMPreeditNone 0x0010L
   --  unsupported macro: XIMStatusArea 0x0100L
   --  unsupported macro: XIMStatusCallbacks 0x0200L
   --  unsupported macro: XIMStatusNothing 0x0400L
   --  unsupported macro: XIMStatusNone 0x0800L
   --  unsupported macro: XNVaNestedList "XNVaNestedList"
   --  unsupported macro: XNQueryInputStyle "queryInputStyle"
   --  unsupported macro: XNClientWindow "clientWindow"
   --  unsupported macro: XNInputStyle "inputStyle"
   --  unsupported macro: XNFocusWindow "focusWindow"
   --  unsupported macro: XNResourceName "resourceName"
   --  unsupported macro: XNResourceClass "resourceClass"
   --  unsupported macro: XNGeometryCallback "geometryCallback"
   --  unsupported macro: XNDestroyCallback "destroyCallback"
   --  unsupported macro: XNFilterEvents "filterEvents"
   --  unsupported macro: XNPreeditStartCallback "preeditStartCallback"
   --  unsupported macro: XNPreeditDoneCallback "preeditDoneCallback"
   --  unsupported macro: XNPreeditDrawCallback "preeditDrawCallback"
   --  unsupported macro: XNPreeditCaretCallback "preeditCaretCallback"
   --  unsupported macro: XNPreeditStateNotifyCallback "preeditStateNotifyCallback"
   --  unsupported macro: XNPreeditAttributes "preeditAttributes"
   --  unsupported macro: XNStatusStartCallback "statusStartCallback"
   --  unsupported macro: XNStatusDoneCallback "statusDoneCallback"
   --  unsupported macro: XNStatusDrawCallback "statusDrawCallback"
   --  unsupported macro: XNStatusAttributes "statusAttributes"
   --  unsupported macro: XNArea "area"
   --  unsupported macro: XNAreaNeeded "areaNeeded"
   --  unsupported macro: XNSpotLocation "spotLocation"
   --  unsupported macro: XNColormap "colorMap"
   --  unsupported macro: XNStdColormap "stdColorMap"
   --  unsupported macro: XNForeground "foreground"
   --  unsupported macro: XNBackground "background"
   --  unsupported macro: XNBackgroundPixmap "backgroundPixmap"
   --  unsupported macro: XNFontSet "fontSet"
   --  unsupported macro: XNLineSpace "lineSpace"
   --  unsupported macro: XNCursor "cursor"
   --  unsupported macro: XNQueryIMValuesList "queryIMValuesList"
   --  unsupported macro: XNQueryICValuesList "queryICValuesList"
   --  unsupported macro: XNVisiblePosition "visiblePosition"
   --  unsupported macro: XNR6PreeditCallback "r6PreeditCallback"
   --  unsupported macro: XNStringConversionCallback "stringConversionCallback"
   --  unsupported macro: XNStringConversion "stringConversion"
   --  unsupported macro: XNResetState "resetState"
   --  unsupported macro: XNHotKey "hotKey"
   --  unsupported macro: XNHotKeyState "hotKeyState"
   --  unsupported macro: XNPreeditState "preeditState"
   --  unsupported macro: XNSeparatorofNestedList "separatorofNestedList"
   --  unsupported macro: XBufferOverflow -1
   --  unsupported macro: XLookupNone 1
   --  unsupported macro: XLookupChars 2
   --  unsupported macro: XLookupKeySym 3
   --  unsupported macro: XLookupBoth 4
   --  unsupported macro: XIMReverse 1L
   --  unsupported macro: XIMUnderline (1L<<1)
   --  unsupported macro: XIMHighlight (1L<<2)
   --  unsupported macro: XIMPrimary (1L<<5)
   --  unsupported macro: XIMSecondary (1L<<6)
   --  unsupported macro: XIMTertiary (1L<<7)
   --  unsupported macro: XIMVisibleToForward (1L<<8)
   --  unsupported macro: XIMVisibleToBackword (1L<<9)
   --  unsupported macro: XIMVisibleToCenter (1L<<10)
   --  unsupported macro: XIMPreeditUnKnown 0L
   --  unsupported macro: XIMPreeditEnable 1L
   --  unsupported macro: XIMPreeditDisable (1L<<1)
   --  unsupported macro: XIMInitialState 1L
   --  unsupported macro: XIMPreserveState (1L<<1)
   --  unsupported macro: XIMStringConversionLeftEdge (0x00000001)
   --  unsupported macro: XIMStringConversionRightEdge (0x00000002)
   --  unsupported macro: XIMStringConversionTopEdge (0x00000004)
   --  unsupported macro: XIMStringConversionBottomEdge (0x00000008)
   --  unsupported macro: XIMStringConversionConcealed (0x00000010)
   --  unsupported macro: XIMStringConversionWrapped (0x00000020)
   --  unsupported macro: XIMStringConversionBuffer (0x0001)
   --  unsupported macro: XIMStringConversionLine (0x0002)
   --  unsupported macro: XIMStringConversionWord (0x0003)
   --  unsupported macro: XIMStringConversionChar (0x0004)
   --  unsupported macro: XIMStringConversionSubstitution (0x0001)
   --  unsupported macro: XIMStringConversionRetrieval (0x0002)
   --  unsupported macro: XIMHotKeyStateON (0x0001L)
   --  unsupported macro: XIMHotKeyStateOFF (0x0002L)
   --  skipped func _Xmblen

   type XPointer is new Interfaces.C.Strings.chars_ptr;  -- /usr/include/X11/Xlib.h:92

   type u_XExtData is record
      number : aliased int;  -- /usr/include/X11/Xlib.h:161
      next : access u_XExtData;  -- /usr/include/X11/Xlib.h:162
      free_private : access function (arg1 : access u_XExtData) return int;  -- /usr/include/X11/Xlib.h:165
      private_data : XPointer;  -- /usr/include/X11/Xlib.h:166
   end record;
   pragma Convention (C_Pass_By_Copy, u_XExtData);  -- /usr/include/X11/Xlib.h:160

   subtype XExtData is u_XExtData;

   type XExtCodes is record
      extension : aliased int;  -- /usr/include/X11/Xlib.h:173
      major_opcode : aliased int;  -- /usr/include/X11/Xlib.h:174
      first_event : aliased int;  -- /usr/include/X11/Xlib.h:175
      first_error : aliased int;  -- /usr/include/X11/Xlib.h:176
   end record;
   pragma Convention (C_Pass_By_Copy, XExtCodes);  -- /usr/include/X11/Xlib.h:177

   --  skipped anonymous struct anon_14

   type XPixmapFormatValues is record
      depth : aliased int;  -- /usr/include/X11/Xlib.h:184
      bits_per_pixel : aliased int;  -- /usr/include/X11/Xlib.h:185
      scanline_pad : aliased int;  -- /usr/include/X11/Xlib.h:186
   end record;
   pragma Convention (C_Pass_By_Copy, XPixmapFormatValues);  -- /usr/include/X11/Xlib.h:187

   --  skipped anonymous struct anon_15

   type XGCValues is record
      c_function : aliased int;  -- /usr/include/X11/Xlib.h:194
      plane_mask : aliased unsigned_long;  -- /usr/include/X11/Xlib.h:195
      foreground : aliased unsigned_long;  -- /usr/include/X11/Xlib.h:196
      background : aliased unsigned_long;  -- /usr/include/X11/Xlib.h:197
      line_width : aliased int;  -- /usr/include/X11/Xlib.h:198
      line_style : aliased int;  -- /usr/include/X11/Xlib.h:199
      cap_style : aliased int;  -- /usr/include/X11/Xlib.h:200
      join_style : aliased int;  -- /usr/include/X11/Xlib.h:202
      fill_style : aliased int;  -- /usr/include/X11/Xlib.h:203
      fill_rule : aliased int;  -- /usr/include/X11/Xlib.h:205
      arc_mode : aliased int;  -- /usr/include/X11/Xlib.h:206
      tile : aliased X11_X_h.Pixmap;  -- /usr/include/X11/Xlib.h:207
      stipple : aliased X11_X_h.Pixmap;  -- /usr/include/X11/Xlib.h:208
      ts_x_origin : aliased int;  -- /usr/include/X11/Xlib.h:209
      ts_y_origin : aliased int;  -- /usr/include/X11/Xlib.h:210
      the_font : aliased X11_X_h.Font;  -- /usr/include/X11/Xlib.h:211
      subwindow_mode : aliased int;  -- /usr/include/X11/Xlib.h:212
      graphics_exposures : aliased int;  -- /usr/include/X11/Xlib.h:213
      clip_x_origin : aliased int;  -- /usr/include/X11/Xlib.h:214
      clip_y_origin : aliased int;  -- /usr/include/X11/Xlib.h:215
      clip_mask : aliased X11_X_h.Pixmap;  -- /usr/include/X11/Xlib.h:216
      dash_offset : aliased int;  -- /usr/include/X11/Xlib.h:217
      dashes : aliased char;  -- /usr/include/X11/Xlib.h:218
   end record;
   pragma Convention (C_Pass_By_Copy, XGCValues);  -- /usr/include/X11/Xlib.h:219

   --  skipped anonymous struct anon_16

   --  skipped empty struct u_XGC

   type GC is new System.Address;  -- /usr/include/X11/Xlib.h:234

   type Visual is record
      ext_data : access XExtData;  -- /usr/include/X11/Xlib.h:240
      the_visualid : aliased X11_X_h.VisualID;  -- /usr/include/X11/Xlib.h:241
      c_class : aliased int;  -- /usr/include/X11/Xlib.h:243
      red_mask : aliased unsigned_long;  -- /usr/include/X11/Xlib.h:247
      green_mask : aliased unsigned_long;  -- /usr/include/X11/Xlib.h:247
      blue_mask : aliased unsigned_long;  -- /usr/include/X11/Xlib.h:247
      bits_per_rgb : aliased int;  -- /usr/include/X11/Xlib.h:248
      map_entries : aliased int;  -- /usr/include/X11/Xlib.h:249
   end record;
   pragma Convention (C_Pass_By_Copy, Visual);  -- /usr/include/X11/Xlib.h:250

   --  skipped anonymous struct anon_17

   type Depth is record
      depth : aliased int;  -- /usr/include/X11/Xlib.h:256
      nvisuals : aliased int;  -- /usr/include/X11/Xlib.h:257
      visuals : access Visual;  -- /usr/include/X11/Xlib.h:258
   end record;
   pragma Convention (C_Pass_By_Copy, Depth);  -- /usr/include/X11/Xlib.h:259

   --  skipped anonymous struct anon_18

   --  skipped empty struct u_XDisplay

   type Screen is record
      ext_data : access XExtData;  -- /usr/include/X11/Xlib.h:270
      display : System.Address;  -- /usr/include/X11/Xlib.h:271
      root : aliased X11_X_h.Window;  -- /usr/include/X11/Xlib.h:272
      width : aliased int;  -- /usr/include/X11/Xlib.h:273
      height : aliased int;  -- /usr/include/X11/Xlib.h:273
      mwidth : aliased int;  -- /usr/include/X11/Xlib.h:274
      mheight : aliased int;  -- /usr/include/X11/Xlib.h:274
      ndepths : aliased int;  -- /usr/include/X11/Xlib.h:275
      depths : access Depth;  -- /usr/include/X11/Xlib.h:276
      root_depth : aliased int;  -- /usr/include/X11/Xlib.h:277
      root_visual : access Visual;  -- /usr/include/X11/Xlib.h:278
      default_gc : GC;  -- /usr/include/X11/Xlib.h:279
      cmap : aliased X11_X_h.Colormap;  -- /usr/include/X11/Xlib.h:280
      white_pixel : aliased unsigned_long;  -- /usr/include/X11/Xlib.h:281
      black_pixel : aliased unsigned_long;  -- /usr/include/X11/Xlib.h:282
      max_maps : aliased int;  -- /usr/include/X11/Xlib.h:283
      min_maps : aliased int;  -- /usr/include/X11/Xlib.h:283
      backing_store : aliased int;  -- /usr/include/X11/Xlib.h:284
      save_unders : aliased int;  -- /usr/include/X11/Xlib.h:285
      root_input_mask : aliased long;  -- /usr/include/X11/Xlib.h:286
   end record;
   pragma Convention (C_Pass_By_Copy, Screen);  -- /usr/include/X11/Xlib.h:287

   --  skipped anonymous struct anon_19

   type ScreenFormat is record
      ext_data : access XExtData;  -- /usr/include/X11/Xlib.h:293
      depth : aliased int;  -- /usr/include/X11/Xlib.h:294
      bits_per_pixel : aliased int;  -- /usr/include/X11/Xlib.h:295
      scanline_pad : aliased int;  -- /usr/include/X11/Xlib.h:296
   end record;
   pragma Convention (C_Pass_By_Copy, ScreenFormat);  -- /usr/include/X11/Xlib.h:297

   --  skipped anonymous struct anon_20

   type XSetWindowAttributes is record
      background_pixmap : aliased X11_X_h.Pixmap;  -- /usr/include/X11/Xlib.h:303
      background_pixel : aliased unsigned_long;  -- /usr/include/X11/Xlib.h:304
      border_pixmap : aliased X11_X_h.Pixmap;  -- /usr/include/X11/Xlib.h:305
      border_pixel : aliased unsigned_long;  -- /usr/include/X11/Xlib.h:306
      bit_gravity : aliased int;  -- /usr/include/X11/Xlib.h:307
      win_gravity : aliased int;  -- /usr/include/X11/Xlib.h:308
      backing_store : aliased int;  -- /usr/include/X11/Xlib.h:309
      backing_planes : aliased unsigned_long;  -- /usr/include/X11/Xlib.h:310
      backing_pixel : aliased unsigned_long;  -- /usr/include/X11/Xlib.h:311
      save_under : aliased int;  -- /usr/include/X11/Xlib.h:312
      event_mask : aliased long;  -- /usr/include/X11/Xlib.h:313
      do_not_propagate_mask : aliased long;  -- /usr/include/X11/Xlib.h:314
      override_redirect : aliased int;  -- /usr/include/X11/Xlib.h:315
      the_colormap : aliased X11_X_h.Colormap;  -- /usr/include/X11/Xlib.h:316
      the_cursor : aliased X11_X_h.Cursor;  -- /usr/include/X11/Xlib.h:317
   end record;
   pragma Convention (C_Pass_By_Copy, XSetWindowAttributes);  -- /usr/include/X11/Xlib.h:318

   --  skipped anonymous struct anon_21

   type XWindowAttributes is record
      x : aliased int;  -- /usr/include/X11/Xlib.h:321
      y : aliased int;  -- /usr/include/X11/Xlib.h:321
      width : aliased int;  -- /usr/include/X11/Xlib.h:322
      height : aliased int;  -- /usr/include/X11/Xlib.h:322
      border_width : aliased int;  -- /usr/include/X11/Xlib.h:323
      depth : aliased int;  -- /usr/include/X11/Xlib.h:324
      the_visual : access Visual;  -- /usr/include/X11/Xlib.h:325
      root : aliased X11_X_h.Window;  -- /usr/include/X11/Xlib.h:326
      c_class : aliased int;  -- /usr/include/X11/Xlib.h:328
      bit_gravity : aliased int;  -- /usr/include/X11/Xlib.h:332
      win_gravity : aliased int;  -- /usr/include/X11/Xlib.h:333
      backing_store : aliased int;  -- /usr/include/X11/Xlib.h:334
      backing_planes : aliased unsigned_long;  -- /usr/include/X11/Xlib.h:335
      backing_pixel : aliased unsigned_long;  -- /usr/include/X11/Xlib.h:336
      save_under : aliased int;  -- /usr/include/X11/Xlib.h:337
      the_colormap : aliased X11_X_h.Colormap;  -- /usr/include/X11/Xlib.h:338
      map_installed : aliased int;  -- /usr/include/X11/Xlib.h:339
      map_state : aliased int;  -- /usr/include/X11/Xlib.h:340
      all_event_masks : aliased long;  -- /usr/include/X11/Xlib.h:341
      your_event_mask : aliased long;  -- /usr/include/X11/Xlib.h:342
      do_not_propagate_mask : aliased long;  -- /usr/include/X11/Xlib.h:343
      override_redirect : aliased int;  -- /usr/include/X11/Xlib.h:344
      the_screen : access Screen;  -- /usr/include/X11/Xlib.h:345
   end record;
   pragma Convention (C_Pass_By_Copy, XWindowAttributes);  -- /usr/include/X11/Xlib.h:346

   --  skipped anonymous struct anon_22

   type XHostAddress is record
      family : aliased int;  -- /usr/include/X11/Xlib.h:354
      length : aliased int;  -- /usr/include/X11/Xlib.h:355
      address : Interfaces.C.Strings.chars_ptr;  -- /usr/include/X11/Xlib.h:356
   end record;
   pragma Convention (C_Pass_By_Copy, XHostAddress);  -- /usr/include/X11/Xlib.h:357

   --  skipped anonymous struct anon_23

   type XServerInterpretedAddress is record
      typelength : aliased int;  -- /usr/include/X11/Xlib.h:363
      valuelength : aliased int;  -- /usr/include/X11/Xlib.h:364
      c_type : Interfaces.C.Strings.chars_ptr;  -- /usr/include/X11/Xlib.h:365
      value : Interfaces.C.Strings.chars_ptr;  -- /usr/include/X11/Xlib.h:366
   end record;
   pragma Convention (C_Pass_By_Copy, XServerInterpretedAddress);  -- /usr/include/X11/Xlib.h:367

   --  skipped anonymous struct anon_24

   type u_XImage;
   type funcs is record
      create_image : access function
           (arg1 : System.Address;
            arg2 : access Visual;
            arg3 : unsigned;
            arg4 : int;
            arg5 : int;
            arg6 : Interfaces.C.Strings.chars_ptr;
            arg7 : unsigned;
            arg8 : unsigned;
            arg9 : int;
            arg10 : int) return access u_XImage;  -- /usr/include/X11/Xlib.h:399
      destroy_image : access function (arg1 : access u_XImage) return int;  -- /usr/include/X11/Xlib.h:400
      get_pixel : access function
           (arg1 : access u_XImage;
            arg2 : int;
            arg3 : int) return unsigned_long;  -- /usr/include/X11/Xlib.h:401
      put_pixel : access function
           (arg1 : access u_XImage;
            arg2 : int;
            arg3 : int;
            arg4 : unsigned_long) return int;  -- /usr/include/X11/Xlib.h:402
      sub_image : access function
           (arg1 : access u_XImage;
            arg2 : int;
            arg3 : int;
            arg4 : unsigned;
            arg5 : unsigned) return access u_XImage;  -- /usr/include/X11/Xlib.h:403
      add_pixel : access function (arg1 : access u_XImage; arg2 : long) return int;  -- /usr/include/X11/Xlib.h:404
   end record;
   pragma Convention (C_Pass_By_Copy, funcs);
   type u_XImage is record
      width : aliased int;  -- /usr/include/X11/Xlib.h:373
      height : aliased int;  -- /usr/include/X11/Xlib.h:373
      xoffset : aliased int;  -- /usr/include/X11/Xlib.h:374
      format : aliased int;  -- /usr/include/X11/Xlib.h:375
      data : Interfaces.C.Strings.chars_ptr;  -- /usr/include/X11/Xlib.h:376
      byte_order : aliased int;  -- /usr/include/X11/Xlib.h:377
      bitmap_unit : aliased int;  -- /usr/include/X11/Xlib.h:378
      bitmap_bit_order : aliased int;  -- /usr/include/X11/Xlib.h:379
      bitmap_pad : aliased int;  -- /usr/include/X11/Xlib.h:380
      depth : aliased int;  -- /usr/include/X11/Xlib.h:381
      bytes_per_line : aliased int;  -- /usr/include/X11/Xlib.h:382
      bits_per_pixel : aliased int;  -- /usr/include/X11/Xlib.h:383
      red_mask : aliased unsigned_long;  -- /usr/include/X11/Xlib.h:384
      green_mask : aliased unsigned_long;  -- /usr/include/X11/Xlib.h:385
      blue_mask : aliased unsigned_long;  -- /usr/include/X11/Xlib.h:386
      obdata : XPointer;  -- /usr/include/X11/Xlib.h:387
      f : aliased funcs;  -- /usr/include/X11/Xlib.h:405
   end record;
   pragma Convention (C_Pass_By_Copy, u_XImage);  -- /usr/include/X11/Xlib.h:372

   subtype XImage is u_XImage;

   type XWindowChanges is record
      x : aliased int;  -- /usr/include/X11/Xlib.h:412
      y : aliased int;  -- /usr/include/X11/Xlib.h:412
      width : aliased int;  -- /usr/include/X11/Xlib.h:413
      height : aliased int;  -- /usr/include/X11/Xlib.h:413
      border_width : aliased int;  -- /usr/include/X11/Xlib.h:414
      sibling : aliased X11_X_h.Window;  -- /usr/include/X11/Xlib.h:415
      stack_mode : aliased int;  -- /usr/include/X11/Xlib.h:416
   end record;
   pragma Convention (C_Pass_By_Copy, XWindowChanges);  -- /usr/include/X11/Xlib.h:417

   --  skipped anonymous struct anon_25

   type XColor is record
      pixel : aliased unsigned_long;  -- /usr/include/X11/Xlib.h:423
      red : aliased unsigned_short;  -- /usr/include/X11/Xlib.h:424
      green : aliased unsigned_short;  -- /usr/include/X11/Xlib.h:424
      blue : aliased unsigned_short;  -- /usr/include/X11/Xlib.h:424
      flags : aliased char;  -- /usr/include/X11/Xlib.h:425
      pad : aliased char;  -- /usr/include/X11/Xlib.h:426
   end record;
   pragma Convention (C_Pass_By_Copy, XColor);  -- /usr/include/X11/Xlib.h:427

   --  skipped anonymous struct anon_26

   type XSegment is record
      x1 : aliased short;  -- /usr/include/X11/Xlib.h:435
      y1 : aliased short;  -- /usr/include/X11/Xlib.h:435
      x2 : aliased short;  -- /usr/include/X11/Xlib.h:435
      y2 : aliased short;  -- /usr/include/X11/Xlib.h:435
   end record;
   pragma Convention (C_Pass_By_Copy, XSegment);  -- /usr/include/X11/Xlib.h:436

   --  skipped anonymous struct anon_27

   type XPoint is record
      x : aliased short;  -- /usr/include/X11/Xlib.h:439
      y : aliased short;  -- /usr/include/X11/Xlib.h:439
   end record;
   pragma Convention (C_Pass_By_Copy, XPoint);  -- /usr/include/X11/Xlib.h:440

   --  skipped anonymous struct anon_28

   type XRectangle is record
      x : aliased short;  -- /usr/include/X11/Xlib.h:443
      y : aliased short;  -- /usr/include/X11/Xlib.h:443
      width : aliased unsigned_short;  -- /usr/include/X11/Xlib.h:444
      height : aliased unsigned_short;  -- /usr/include/X11/Xlib.h:444
   end record;
   pragma Convention (C_Pass_By_Copy, XRectangle);  -- /usr/include/X11/Xlib.h:445

   --  skipped anonymous struct anon_29

   type XArc is record
      x : aliased short;  -- /usr/include/X11/Xlib.h:448
      y : aliased short;  -- /usr/include/X11/Xlib.h:448
      width : aliased unsigned_short;  -- /usr/include/X11/Xlib.h:449
      height : aliased unsigned_short;  -- /usr/include/X11/Xlib.h:449
      angle1 : aliased short;  -- /usr/include/X11/Xlib.h:450
      angle2 : aliased short;  -- /usr/include/X11/Xlib.h:450
   end record;
   pragma Convention (C_Pass_By_Copy, XArc);  -- /usr/include/X11/Xlib.h:451

   --  skipped anonymous struct anon_30

   type XKeyboardControl is record
      key_click_percent : aliased int;  -- /usr/include/X11/Xlib.h:457
      bell_percent : aliased int;  -- /usr/include/X11/Xlib.h:458
      bell_pitch : aliased int;  -- /usr/include/X11/Xlib.h:459
      bell_duration : aliased int;  -- /usr/include/X11/Xlib.h:460
      led : aliased int;  -- /usr/include/X11/Xlib.h:461
      led_mode : aliased int;  -- /usr/include/X11/Xlib.h:462
      key : aliased int;  -- /usr/include/X11/Xlib.h:463
      auto_repeat_mode : aliased int;  -- /usr/include/X11/Xlib.h:464
   end record;
   pragma Convention (C_Pass_By_Copy, XKeyboardControl);  -- /usr/include/X11/Xlib.h:465

   --  skipped anonymous struct anon_31

   subtype XKeyboardState_auto_repeats_array is Interfaces.C.char_array (0 .. 31);
   type XKeyboardState is record
      key_click_percent : aliased int;  -- /usr/include/X11/Xlib.h:470
      bell_percent : aliased int;  -- /usr/include/X11/Xlib.h:471
      bell_pitch : aliased unsigned;  -- /usr/include/X11/Xlib.h:472
      bell_duration : aliased unsigned;  -- /usr/include/X11/Xlib.h:472
      led_mask : aliased unsigned_long;  -- /usr/include/X11/Xlib.h:473
      global_auto_repeat : aliased int;  -- /usr/include/X11/Xlib.h:474
      auto_repeats : aliased XKeyboardState_auto_repeats_array;  -- /usr/include/X11/Xlib.h:475
   end record;
   pragma Convention (C_Pass_By_Copy, XKeyboardState);  -- /usr/include/X11/Xlib.h:476

   --  skipped anonymous struct anon_32

   type XTimeCoord is record
      the_time : aliased X11_X_h.Time;  -- /usr/include/X11/Xlib.h:481
      x : aliased short;  -- /usr/include/X11/Xlib.h:482
      y : aliased short;  -- /usr/include/X11/Xlib.h:482
   end record;
   pragma Convention (C_Pass_By_Copy, XTimeCoord);  -- /usr/include/X11/Xlib.h:483

   --  skipped anonymous struct anon_33

   type XModifierKeymap is record
      max_keypermod : aliased int;  -- /usr/include/X11/Xlib.h:488
      modifiermap : access X11_X_h.KeyCode;  -- /usr/include/X11/Xlib.h:489
   end record;
   pragma Convention (C_Pass_By_Copy, XModifierKeymap);  -- /usr/include/X11/Xlib.h:490

   --  skipped anonymous struct anon_34

   --  skipped empty struct Display

   --  skipped empty struct u_XPrivate

   --  skipped empty struct u_XrmHashBucketRec

   --  skipped anonymous struct anon_35

   type XKeyEvent is record
      c_type : aliased int;  -- /usr/include/X11/Xlib.h:570
      serial : aliased unsigned_long;  -- /usr/include/X11/Xlib.h:571
      send_event : aliased int;  -- /usr/include/X11/Xlib.h:572
      the_display : System.Address;  -- /usr/include/X11/Xlib.h:573
      the_window : aliased X11_X_h.Window;  -- /usr/include/X11/Xlib.h:574
      root : aliased X11_X_h.Window;  -- /usr/include/X11/Xlib.h:575
      subwindow : aliased X11_X_h.Window;  -- /usr/include/X11/Xlib.h:576
      the_time : aliased X11_X_h.Time;  -- /usr/include/X11/Xlib.h:577
      x : aliased int;  -- /usr/include/X11/Xlib.h:578
      y : aliased int;  -- /usr/include/X11/Xlib.h:578
      x_root : aliased int;  -- /usr/include/X11/Xlib.h:579
      y_root : aliased int;  -- /usr/include/X11/Xlib.h:579
      state : aliased unsigned;  -- /usr/include/X11/Xlib.h:580
      keycode : aliased unsigned;  -- /usr/include/X11/Xlib.h:581
      same_screen : aliased int;  -- /usr/include/X11/Xlib.h:582
   end record;
   pragma Convention (C_Pass_By_Copy, XKeyEvent);  -- /usr/include/X11/Xlib.h:583

   --  skipped anonymous struct anon_36

   subtype XKeyPressedEvent is XKeyEvent;

   subtype XKeyReleasedEvent is XKeyEvent;

   type XButtonEvent is record
      c_type : aliased int;  -- /usr/include/X11/Xlib.h:588
      serial : aliased unsigned_long;  -- /usr/include/X11/Xlib.h:589
      send_event : aliased int;  -- /usr/include/X11/Xlib.h:590
      the_display : System.Address;  -- /usr/include/X11/Xlib.h:591
      the_window : aliased X11_X_h.Window;  -- /usr/include/X11/Xlib.h:592
      root : aliased X11_X_h.Window;  -- /usr/include/X11/Xlib.h:593
      subwindow : aliased X11_X_h.Window;  -- /usr/include/X11/Xlib.h:594
      the_time : aliased X11_X_h.Time;  -- /usr/include/X11/Xlib.h:595
      x : aliased int;  -- /usr/include/X11/Xlib.h:596
      y : aliased int;  -- /usr/include/X11/Xlib.h:596
      x_root : aliased int;  -- /usr/include/X11/Xlib.h:597
      y_root : aliased int;  -- /usr/include/X11/Xlib.h:597
      state : aliased unsigned;  -- /usr/include/X11/Xlib.h:598
      button : aliased unsigned;  -- /usr/include/X11/Xlib.h:599
      same_screen : aliased int;  -- /usr/include/X11/Xlib.h:600
   end record;
   pragma Convention (C_Pass_By_Copy, XButtonEvent);  -- /usr/include/X11/Xlib.h:601

   --  skipped anonymous struct anon_37

   subtype XButtonPressedEvent is XButtonEvent;

   subtype XButtonReleasedEvent is XButtonEvent;

   type XMotionEvent is record
      c_type : aliased int;  -- /usr/include/X11/Xlib.h:606
      serial : aliased unsigned_long;  -- /usr/include/X11/Xlib.h:607
      send_event : aliased int;  -- /usr/include/X11/Xlib.h:608
      the_display : System.Address;  -- /usr/include/X11/Xlib.h:609
      the_window : aliased X11_X_h.Window;  -- /usr/include/X11/Xlib.h:610
      root : aliased X11_X_h.Window;  -- /usr/include/X11/Xlib.h:611
      subwindow : aliased X11_X_h.Window;  -- /usr/include/X11/Xlib.h:612
      the_time : aliased X11_X_h.Time;  -- /usr/include/X11/Xlib.h:613
      x : aliased int;  -- /usr/include/X11/Xlib.h:614
      y : aliased int;  -- /usr/include/X11/Xlib.h:614
      x_root : aliased int;  -- /usr/include/X11/Xlib.h:615
      y_root : aliased int;  -- /usr/include/X11/Xlib.h:615
      state : aliased unsigned;  -- /usr/include/X11/Xlib.h:616
      is_hint : aliased char;  -- /usr/include/X11/Xlib.h:617
      same_screen : aliased int;  -- /usr/include/X11/Xlib.h:618
   end record;
   pragma Convention (C_Pass_By_Copy, XMotionEvent);  -- /usr/include/X11/Xlib.h:619

   --  skipped anonymous struct anon_38

   subtype XPointerMovedEvent is XMotionEvent;

   type XCrossingEvent is record
      c_type : aliased int;  -- /usr/include/X11/Xlib.h:623
      serial : aliased unsigned_long;  -- /usr/include/X11/Xlib.h:624
      send_event : aliased int;  -- /usr/include/X11/Xlib.h:625
      the_display : System.Address;  -- /usr/include/X11/Xlib.h:626
      the_window : aliased X11_X_h.Window;  -- /usr/include/X11/Xlib.h:627
      root : aliased X11_X_h.Window;  -- /usr/include/X11/Xlib.h:628
      subwindow : aliased X11_X_h.Window;  -- /usr/include/X11/Xlib.h:629
      the_time : aliased X11_X_h.Time;  -- /usr/include/X11/Xlib.h:630
      x : aliased int;  -- /usr/include/X11/Xlib.h:631
      y : aliased int;  -- /usr/include/X11/Xlib.h:631
      x_root : aliased int;  -- /usr/include/X11/Xlib.h:632
      y_root : aliased int;  -- /usr/include/X11/Xlib.h:632
      mode : aliased int;  -- /usr/include/X11/Xlib.h:633
      detail : aliased int;  -- /usr/include/X11/Xlib.h:634
      same_screen : aliased int;  -- /usr/include/X11/Xlib.h:639
      focus : aliased int;  -- /usr/include/X11/Xlib.h:640
      state : aliased unsigned;  -- /usr/include/X11/Xlib.h:641
   end record;
   pragma Convention (C_Pass_By_Copy, XCrossingEvent);  -- /usr/include/X11/Xlib.h:642

   --  skipped anonymous struct anon_39

   subtype XEnterWindowEvent is XCrossingEvent;

   subtype XLeaveWindowEvent is XCrossingEvent;

   type XFocusChangeEvent is record
      c_type : aliased int;  -- /usr/include/X11/Xlib.h:647
      serial : aliased unsigned_long;  -- /usr/include/X11/Xlib.h:648
      send_event : aliased int;  -- /usr/include/X11/Xlib.h:649
      the_display : System.Address;  -- /usr/include/X11/Xlib.h:650
      the_window : aliased X11_X_h.Window;  -- /usr/include/X11/Xlib.h:651
      mode : aliased int;  -- /usr/include/X11/Xlib.h:652
      detail : aliased int;  -- /usr/include/X11/Xlib.h:654
   end record;
   pragma Convention (C_Pass_By_Copy, XFocusChangeEvent);  -- /usr/include/X11/Xlib.h:660

   --  skipped anonymous struct anon_40

   subtype XFocusInEvent is XFocusChangeEvent;

   subtype XFocusOutEvent is XFocusChangeEvent;

   subtype XKeymapEvent_key_vector_array is Interfaces.C.char_array (0 .. 31);
   type XKeymapEvent is record
      c_type : aliased int;  -- /usr/include/X11/Xlib.h:666
      serial : aliased unsigned_long;  -- /usr/include/X11/Xlib.h:667
      send_event : aliased int;  -- /usr/include/X11/Xlib.h:668
      the_display : System.Address;  -- /usr/include/X11/Xlib.h:669
      the_window : aliased X11_X_h.Window;  -- /usr/include/X11/Xlib.h:670
      key_vector : aliased XKeymapEvent_key_vector_array;  -- /usr/include/X11/Xlib.h:671
   end record;
   pragma Convention (C_Pass_By_Copy, XKeymapEvent);  -- /usr/include/X11/Xlib.h:672

   --  skipped anonymous struct anon_41

   type XExposeEvent is record
      c_type : aliased int;  -- /usr/include/X11/Xlib.h:675
      serial : aliased unsigned_long;  -- /usr/include/X11/Xlib.h:676
      send_event : aliased int;  -- /usr/include/X11/Xlib.h:677
      the_display : System.Address;  -- /usr/include/X11/Xlib.h:678
      the_window : aliased X11_X_h.Window;  -- /usr/include/X11/Xlib.h:679
      x : aliased int;  -- /usr/include/X11/Xlib.h:680
      y : aliased int;  -- /usr/include/X11/Xlib.h:680
      width : aliased int;  -- /usr/include/X11/Xlib.h:681
      height : aliased int;  -- /usr/include/X11/Xlib.h:681
      count : aliased int;  -- /usr/include/X11/Xlib.h:682
   end record;
   pragma Convention (C_Pass_By_Copy, XExposeEvent);  -- /usr/include/X11/Xlib.h:683

   --  skipped anonymous struct anon_42

   type XGraphicsExposeEvent is record
      c_type : aliased int;  -- /usr/include/X11/Xlib.h:686
      serial : aliased unsigned_long;  -- /usr/include/X11/Xlib.h:687
      send_event : aliased int;  -- /usr/include/X11/Xlib.h:688
      the_display : System.Address;  -- /usr/include/X11/Xlib.h:689
      the_drawable : aliased X11_X_h.Drawable;  -- /usr/include/X11/Xlib.h:690
      x : aliased int;  -- /usr/include/X11/Xlib.h:691
      y : aliased int;  -- /usr/include/X11/Xlib.h:691
      width : aliased int;  -- /usr/include/X11/Xlib.h:692
      height : aliased int;  -- /usr/include/X11/Xlib.h:692
      count : aliased int;  -- /usr/include/X11/Xlib.h:693
      major_code : aliased int;  -- /usr/include/X11/Xlib.h:694
      minor_code : aliased int;  -- /usr/include/X11/Xlib.h:695
   end record;
   pragma Convention (C_Pass_By_Copy, XGraphicsExposeEvent);  -- /usr/include/X11/Xlib.h:696

   --  skipped anonymous struct anon_43

   type XNoExposeEvent is record
      c_type : aliased int;  -- /usr/include/X11/Xlib.h:699
      serial : aliased unsigned_long;  -- /usr/include/X11/Xlib.h:700
      send_event : aliased int;  -- /usr/include/X11/Xlib.h:701
      the_display : System.Address;  -- /usr/include/X11/Xlib.h:702
      the_drawable : aliased X11_X_h.Drawable;  -- /usr/include/X11/Xlib.h:703
      major_code : aliased int;  -- /usr/include/X11/Xlib.h:704
      minor_code : aliased int;  -- /usr/include/X11/Xlib.h:705
   end record;
   pragma Convention (C_Pass_By_Copy, XNoExposeEvent);  -- /usr/include/X11/Xlib.h:706

   --  skipped anonymous struct anon_44

   type XVisibilityEvent is record
      c_type : aliased int;  -- /usr/include/X11/Xlib.h:709
      serial : aliased unsigned_long;  -- /usr/include/X11/Xlib.h:710
      send_event : aliased int;  -- /usr/include/X11/Xlib.h:711
      the_display : System.Address;  -- /usr/include/X11/Xlib.h:712
      the_window : aliased X11_X_h.Window;  -- /usr/include/X11/Xlib.h:713
      state : aliased int;  -- /usr/include/X11/Xlib.h:714
   end record;
   pragma Convention (C_Pass_By_Copy, XVisibilityEvent);  -- /usr/include/X11/Xlib.h:715

   --  skipped anonymous struct anon_45

   type XCreateWindowEvent is record
      c_type : aliased int;  -- /usr/include/X11/Xlib.h:718
      serial : aliased unsigned_long;  -- /usr/include/X11/Xlib.h:719
      send_event : aliased int;  -- /usr/include/X11/Xlib.h:720
      the_display : System.Address;  -- /usr/include/X11/Xlib.h:721
      parent : aliased X11_X_h.Window;  -- /usr/include/X11/Xlib.h:722
      the_window : aliased X11_X_h.Window;  -- /usr/include/X11/Xlib.h:723
      x : aliased int;  -- /usr/include/X11/Xlib.h:724
      y : aliased int;  -- /usr/include/X11/Xlib.h:724
      width : aliased int;  -- /usr/include/X11/Xlib.h:725
      height : aliased int;  -- /usr/include/X11/Xlib.h:725
      border_width : aliased int;  -- /usr/include/X11/Xlib.h:726
      override_redirect : aliased int;  -- /usr/include/X11/Xlib.h:727
   end record;
   pragma Convention (C_Pass_By_Copy, XCreateWindowEvent);  -- /usr/include/X11/Xlib.h:728

   --  skipped anonymous struct anon_46

   type XDestroyWindowEvent is record
      c_type : aliased int;  -- /usr/include/X11/Xlib.h:731
      serial : aliased unsigned_long;  -- /usr/include/X11/Xlib.h:732
      send_event : aliased int;  -- /usr/include/X11/Xlib.h:733
      the_display : System.Address;  -- /usr/include/X11/Xlib.h:734
      event : aliased X11_X_h.Window;  -- /usr/include/X11/Xlib.h:735
      the_window : aliased X11_X_h.Window;  -- /usr/include/X11/Xlib.h:736
   end record;
   pragma Convention (C_Pass_By_Copy, XDestroyWindowEvent);  -- /usr/include/X11/Xlib.h:737

   --  skipped anonymous struct anon_47

   type XUnmapEvent is record
      c_type : aliased int;  -- /usr/include/X11/Xlib.h:740
      serial : aliased unsigned_long;  -- /usr/include/X11/Xlib.h:741
      send_event : aliased int;  -- /usr/include/X11/Xlib.h:742
      the_display : System.Address;  -- /usr/include/X11/Xlib.h:743
      event : aliased X11_X_h.Window;  -- /usr/include/X11/Xlib.h:744
      the_window : aliased X11_X_h.Window;  -- /usr/include/X11/Xlib.h:745
      from_configure : aliased int;  -- /usr/include/X11/Xlib.h:746
   end record;
   pragma Convention (C_Pass_By_Copy, XUnmapEvent);  -- /usr/include/X11/Xlib.h:747

   --  skipped anonymous struct anon_48

   type XMapEvent is record
      c_type : aliased int;  -- /usr/include/X11/Xlib.h:750
      serial : aliased unsigned_long;  -- /usr/include/X11/Xlib.h:751
      send_event : aliased int;  -- /usr/include/X11/Xlib.h:752
      the_display : System.Address;  -- /usr/include/X11/Xlib.h:753
      event : aliased X11_X_h.Window;  -- /usr/include/X11/Xlib.h:754
      the_window : aliased X11_X_h.Window;  -- /usr/include/X11/Xlib.h:755
      override_redirect : aliased int;  -- /usr/include/X11/Xlib.h:756
   end record;
   pragma Convention (C_Pass_By_Copy, XMapEvent);  -- /usr/include/X11/Xlib.h:757

   --  skipped anonymous struct anon_49

   type XMapRequestEvent is record
      c_type : aliased int;  -- /usr/include/X11/Xlib.h:760
      serial : aliased unsigned_long;  -- /usr/include/X11/Xlib.h:761
      send_event : aliased int;  -- /usr/include/X11/Xlib.h:762
      the_display : System.Address;  -- /usr/include/X11/Xlib.h:763
      parent : aliased X11_X_h.Window;  -- /usr/include/X11/Xlib.h:764
      the_window : aliased X11_X_h.Window;  -- /usr/include/X11/Xlib.h:765
   end record;
   pragma Convention (C_Pass_By_Copy, XMapRequestEvent);  -- /usr/include/X11/Xlib.h:766

   --  skipped anonymous struct anon_50

   type XReparentEvent is record
      c_type : aliased int;  -- /usr/include/X11/Xlib.h:769
      serial : aliased unsigned_long;  -- /usr/include/X11/Xlib.h:770
      send_event : aliased int;  -- /usr/include/X11/Xlib.h:771
      the_display : System.Address;  -- /usr/include/X11/Xlib.h:772
      event : aliased X11_X_h.Window;  -- /usr/include/X11/Xlib.h:773
      the_window : aliased X11_X_h.Window;  -- /usr/include/X11/Xlib.h:774
      parent : aliased X11_X_h.Window;  -- /usr/include/X11/Xlib.h:775
      x : aliased int;  -- /usr/include/X11/Xlib.h:776
      y : aliased int;  -- /usr/include/X11/Xlib.h:776
      override_redirect : aliased int;  -- /usr/include/X11/Xlib.h:777
   end record;
   pragma Convention (C_Pass_By_Copy, XReparentEvent);  -- /usr/include/X11/Xlib.h:778

   --  skipped anonymous struct anon_51

   type XConfigureEvent is record
      c_type : aliased int;  -- /usr/include/X11/Xlib.h:781
      serial : aliased unsigned_long;  -- /usr/include/X11/Xlib.h:782
      send_event : aliased int;  -- /usr/include/X11/Xlib.h:783
      the_display : System.Address;  -- /usr/include/X11/Xlib.h:784
      event : aliased X11_X_h.Window;  -- /usr/include/X11/Xlib.h:785
      the_window : aliased X11_X_h.Window;  -- /usr/include/X11/Xlib.h:786
      x : aliased int;  -- /usr/include/X11/Xlib.h:787
      y : aliased int;  -- /usr/include/X11/Xlib.h:787
      width : aliased int;  -- /usr/include/X11/Xlib.h:788
      height : aliased int;  -- /usr/include/X11/Xlib.h:788
      border_width : aliased int;  -- /usr/include/X11/Xlib.h:789
      above : aliased X11_X_h.Window;  -- /usr/include/X11/Xlib.h:790
      override_redirect : aliased int;  -- /usr/include/X11/Xlib.h:791
   end record;
   pragma Convention (C_Pass_By_Copy, XConfigureEvent);  -- /usr/include/X11/Xlib.h:792

   --  skipped anonymous struct anon_52

   type XGravityEvent is record
      c_type : aliased int;  -- /usr/include/X11/Xlib.h:795
      serial : aliased unsigned_long;  -- /usr/include/X11/Xlib.h:796
      send_event : aliased int;  -- /usr/include/X11/Xlib.h:797
      the_display : System.Address;  -- /usr/include/X11/Xlib.h:798
      event : aliased X11_X_h.Window;  -- /usr/include/X11/Xlib.h:799
      the_window : aliased X11_X_h.Window;  -- /usr/include/X11/Xlib.h:800
      x : aliased int;  -- /usr/include/X11/Xlib.h:801
      y : aliased int;  -- /usr/include/X11/Xlib.h:801
   end record;
   pragma Convention (C_Pass_By_Copy, XGravityEvent);  -- /usr/include/X11/Xlib.h:802

   --  skipped anonymous struct anon_53

   type XResizeRequestEvent is record
      c_type : aliased int;  -- /usr/include/X11/Xlib.h:805
      serial : aliased unsigned_long;  -- /usr/include/X11/Xlib.h:806
      send_event : aliased int;  -- /usr/include/X11/Xlib.h:807
      the_display : System.Address;  -- /usr/include/X11/Xlib.h:808
      the_window : aliased X11_X_h.Window;  -- /usr/include/X11/Xlib.h:809
      width : aliased int;  -- /usr/include/X11/Xlib.h:810
      height : aliased int;  -- /usr/include/X11/Xlib.h:810
   end record;
   pragma Convention (C_Pass_By_Copy, XResizeRequestEvent);  -- /usr/include/X11/Xlib.h:811

   --  skipped anonymous struct anon_54

   type XConfigureRequestEvent is record
      c_type : aliased int;  -- /usr/include/X11/Xlib.h:814
      serial : aliased unsigned_long;  -- /usr/include/X11/Xlib.h:815
      send_event : aliased int;  -- /usr/include/X11/Xlib.h:816
      the_display : System.Address;  -- /usr/include/X11/Xlib.h:817
      parent : aliased X11_X_h.Window;  -- /usr/include/X11/Xlib.h:818
      the_window : aliased X11_X_h.Window;  -- /usr/include/X11/Xlib.h:819
      x : aliased int;  -- /usr/include/X11/Xlib.h:820
      y : aliased int;  -- /usr/include/X11/Xlib.h:820
      width : aliased int;  -- /usr/include/X11/Xlib.h:821
      height : aliased int;  -- /usr/include/X11/Xlib.h:821
      border_width : aliased int;  -- /usr/include/X11/Xlib.h:822
      above : aliased X11_X_h.Window;  -- /usr/include/X11/Xlib.h:823
      detail : aliased int;  -- /usr/include/X11/Xlib.h:824
      value_mask : aliased unsigned_long;  -- /usr/include/X11/Xlib.h:825
   end record;
   pragma Convention (C_Pass_By_Copy, XConfigureRequestEvent);  -- /usr/include/X11/Xlib.h:826

   --  skipped anonymous struct anon_55

   type XCirculateEvent is record
      c_type : aliased int;  -- /usr/include/X11/Xlib.h:829
      serial : aliased unsigned_long;  -- /usr/include/X11/Xlib.h:830
      send_event : aliased int;  -- /usr/include/X11/Xlib.h:831
      the_display : System.Address;  -- /usr/include/X11/Xlib.h:832
      event : aliased X11_X_h.Window;  -- /usr/include/X11/Xlib.h:833
      the_window : aliased X11_X_h.Window;  -- /usr/include/X11/Xlib.h:834
      place : aliased int;  -- /usr/include/X11/Xlib.h:835
   end record;
   pragma Convention (C_Pass_By_Copy, XCirculateEvent);  -- /usr/include/X11/Xlib.h:836

   --  skipped anonymous struct anon_56

   type XCirculateRequestEvent is record
      c_type : aliased int;  -- /usr/include/X11/Xlib.h:839
      serial : aliased unsigned_long;  -- /usr/include/X11/Xlib.h:840
      send_event : aliased int;  -- /usr/include/X11/Xlib.h:841
      the_display : System.Address;  -- /usr/include/X11/Xlib.h:842
      parent : aliased X11_X_h.Window;  -- /usr/include/X11/Xlib.h:843
      the_window : aliased X11_X_h.Window;  -- /usr/include/X11/Xlib.h:844
      place : aliased int;  -- /usr/include/X11/Xlib.h:845
   end record;
   pragma Convention (C_Pass_By_Copy, XCirculateRequestEvent);  -- /usr/include/X11/Xlib.h:846

   --  skipped anonymous struct anon_57

   type XPropertyEvent is record
      c_type : aliased int;  -- /usr/include/X11/Xlib.h:849
      serial : aliased unsigned_long;  -- /usr/include/X11/Xlib.h:850
      send_event : aliased int;  -- /usr/include/X11/Xlib.h:851
      the_display : System.Address;  -- /usr/include/X11/Xlib.h:852
      the_window : aliased X11_X_h.Window;  -- /usr/include/X11/Xlib.h:853
      the_atom : aliased X11_X_h.Atom;  -- /usr/include/X11/Xlib.h:854
      the_time : aliased X11_X_h.Time;  -- /usr/include/X11/Xlib.h:855
      state : aliased int;  -- /usr/include/X11/Xlib.h:856
   end record;
   pragma Convention (C_Pass_By_Copy, XPropertyEvent);  -- /usr/include/X11/Xlib.h:857

   --  skipped anonymous struct anon_58

   type XSelectionClearEvent is record
      c_type : aliased int;  -- /usr/include/X11/Xlib.h:860
      serial : aliased unsigned_long;  -- /usr/include/X11/Xlib.h:861
      send_event : aliased int;  -- /usr/include/X11/Xlib.h:862
      the_display : System.Address;  -- /usr/include/X11/Xlib.h:863
      the_window : aliased X11_X_h.Window;  -- /usr/include/X11/Xlib.h:864
      selection : aliased X11_X_h.Atom;  -- /usr/include/X11/Xlib.h:865
      the_time : aliased X11_X_h.Time;  -- /usr/include/X11/Xlib.h:866
   end record;
   pragma Convention (C_Pass_By_Copy, XSelectionClearEvent);  -- /usr/include/X11/Xlib.h:867

   --  skipped anonymous struct anon_59

   type XSelectionRequestEvent is record
      c_type : aliased int;  -- /usr/include/X11/Xlib.h:870
      serial : aliased unsigned_long;  -- /usr/include/X11/Xlib.h:871
      send_event : aliased int;  -- /usr/include/X11/Xlib.h:872
      the_display : System.Address;  -- /usr/include/X11/Xlib.h:873
      owner : aliased X11_X_h.Window;  -- /usr/include/X11/Xlib.h:874
      requestor : aliased X11_X_h.Window;  -- /usr/include/X11/Xlib.h:875
      selection : aliased X11_X_h.Atom;  -- /usr/include/X11/Xlib.h:876
      target : aliased X11_X_h.Atom;  -- /usr/include/X11/Xlib.h:877
      property : aliased X11_X_h.Atom;  -- /usr/include/X11/Xlib.h:878
      the_time : aliased X11_X_h.Time;  -- /usr/include/X11/Xlib.h:879
   end record;
   pragma Convention (C_Pass_By_Copy, XSelectionRequestEvent);  -- /usr/include/X11/Xlib.h:880

   --  skipped anonymous struct anon_60

   type XSelectionEvent is record
      c_type : aliased int;  -- /usr/include/X11/Xlib.h:883
      serial : aliased unsigned_long;  -- /usr/include/X11/Xlib.h:884
      send_event : aliased int;  -- /usr/include/X11/Xlib.h:885
      the_display : System.Address;  -- /usr/include/X11/Xlib.h:886
      requestor : aliased X11_X_h.Window;  -- /usr/include/X11/Xlib.h:887
      selection : aliased X11_X_h.Atom;  -- /usr/include/X11/Xlib.h:888
      target : aliased X11_X_h.Atom;  -- /usr/include/X11/Xlib.h:889
      property : aliased X11_X_h.Atom;  -- /usr/include/X11/Xlib.h:890
      the_time : aliased X11_X_h.Time;  -- /usr/include/X11/Xlib.h:891
   end record;
   pragma Convention (C_Pass_By_Copy, XSelectionEvent);  -- /usr/include/X11/Xlib.h:892

   --  skipped anonymous struct anon_61

   type XColormapEvent is record
      c_type : aliased int;  -- /usr/include/X11/Xlib.h:895
      serial : aliased unsigned_long;  -- /usr/include/X11/Xlib.h:896
      send_event : aliased int;  -- /usr/include/X11/Xlib.h:897
      the_display : System.Address;  -- /usr/include/X11/Xlib.h:898
      the_window : aliased X11_X_h.Window;  -- /usr/include/X11/Xlib.h:899
      the_colormap : aliased X11_X_h.Colormap;  -- /usr/include/X11/Xlib.h:900
      c_new : aliased int;  -- /usr/include/X11/Xlib.h:902
      state : aliased int;  -- /usr/include/X11/Xlib.h:906
   end record;
   pragma Convention (C_Pass_By_Copy, XColormapEvent);  -- /usr/include/X11/Xlib.h:907

   --  skipped anonymous struct anon_62

   subtype XClientMessageEvent_b_array is Interfaces.C.char_array (0 .. 19);
   type XClientMessageEvent_s_array is array (0 .. 9) of aliased short;
   type XClientMessageEvent_l_array is array (0 .. 4) of aliased long;
   type anon_64 (discr : unsigned := 0) is record
      case discr is
         when 0 =>
            b : aliased XClientMessageEvent_b_array;  -- /usr/include/X11/Xlib.h:918
         when 1 =>
            s : aliased XClientMessageEvent_s_array;  -- /usr/include/X11/Xlib.h:919
         when others =>
            l : aliased XClientMessageEvent_l_array;  -- /usr/include/X11/Xlib.h:920
      end case;
   end record;
   pragma Convention (C_Pass_By_Copy, anon_64);
   pragma Unchecked_Union (anon_64);
   type XClientMessageEvent is record
      c_type : aliased int;  -- /usr/include/X11/Xlib.h:910
      serial : aliased unsigned_long;  -- /usr/include/X11/Xlib.h:911
      send_event : aliased int;  -- /usr/include/X11/Xlib.h:912
      the_display : System.Address;  -- /usr/include/X11/Xlib.h:913
      the_window : aliased X11_X_h.Window;  -- /usr/include/X11/Xlib.h:914
      message_type : aliased X11_X_h.Atom;  -- /usr/include/X11/Xlib.h:915
      format : aliased int;  -- /usr/include/X11/Xlib.h:916
      data : anon_64;  -- /usr/include/X11/Xlib.h:921
   end record;
   pragma Convention (C_Pass_By_Copy, XClientMessageEvent);  -- /usr/include/X11/Xlib.h:922

   --  skipped anonymous struct anon_63

   type XMappingEvent is record
      c_type : aliased int;  -- /usr/include/X11/Xlib.h:925
      serial : aliased unsigned_long;  -- /usr/include/X11/Xlib.h:926
      send_event : aliased int;  -- /usr/include/X11/Xlib.h:927
      the_display : System.Address;  -- /usr/include/X11/Xlib.h:928
      the_window : aliased X11_X_h.Window;  -- /usr/include/X11/Xlib.h:929
      request : aliased int;  -- /usr/include/X11/Xlib.h:930
      first_keycode : aliased int;  -- /usr/include/X11/Xlib.h:932
      count : aliased int;  -- /usr/include/X11/Xlib.h:933
   end record;
   pragma Convention (C_Pass_By_Copy, XMappingEvent);  -- /usr/include/X11/Xlib.h:934

   --  skipped anonymous struct anon_65

   type XErrorEvent is record
      c_type : aliased int;  -- /usr/include/X11/Xlib.h:937
      the_display : System.Address;  -- /usr/include/X11/Xlib.h:938
      resourceid : aliased X11_X_h.XID;  -- /usr/include/X11/Xlib.h:939
      serial : aliased unsigned_long;  -- /usr/include/X11/Xlib.h:940
      error_code : aliased unsigned_char;  -- /usr/include/X11/Xlib.h:941
      request_code : aliased unsigned_char;  -- /usr/include/X11/Xlib.h:942
      minor_code : aliased unsigned_char;  -- /usr/include/X11/Xlib.h:943
   end record;
   pragma Convention (C_Pass_By_Copy, XErrorEvent);  -- /usr/include/X11/Xlib.h:944

   --  skipped anonymous struct anon_66

   type XAnyEvent is record
      c_type : aliased int;  -- /usr/include/X11/Xlib.h:947
      serial : aliased unsigned_long;  -- /usr/include/X11/Xlib.h:948
      send_event : aliased int;  -- /usr/include/X11/Xlib.h:949
      the_display : System.Address;  -- /usr/include/X11/Xlib.h:950
      the_window : aliased X11_X_h.Window;  -- /usr/include/X11/Xlib.h:951
   end record;
   pragma Convention (C_Pass_By_Copy, XAnyEvent);  -- /usr/include/X11/Xlib.h:952

   --  skipped anonymous struct anon_67

   type XGenericEvent is record
      c_type : aliased int;  -- /usr/include/X11/Xlib.h:962
      serial : aliased unsigned_long;  -- /usr/include/X11/Xlib.h:963
      send_event : aliased int;  -- /usr/include/X11/Xlib.h:964
      the_display : System.Address;  -- /usr/include/X11/Xlib.h:965
      extension : aliased int;  -- /usr/include/X11/Xlib.h:966
      evtype : aliased int;  -- /usr/include/X11/Xlib.h:967
   end record;
   pragma Convention (C_Pass_By_Copy, XGenericEvent);  -- /usr/include/X11/Xlib.h:968

   --  skipped anonymous struct anon_68

   type XGenericEventCookie is record
      c_type : aliased int;  -- /usr/include/X11/Xlib.h:971
      serial : aliased unsigned_long;  -- /usr/include/X11/Xlib.h:972
      send_event : aliased int;  -- /usr/include/X11/Xlib.h:973
      the_display : System.Address;  -- /usr/include/X11/Xlib.h:974
      extension : aliased int;  -- /usr/include/X11/Xlib.h:975
      evtype : aliased int;  -- /usr/include/X11/Xlib.h:976
      cookie : aliased unsigned;  -- /usr/include/X11/Xlib.h:977
      data : System.Address;  -- /usr/include/X11/Xlib.h:978
   end record;
   pragma Convention (C_Pass_By_Copy, XGenericEventCookie);  -- /usr/include/X11/Xlib.h:979

   --  skipped anonymous struct anon_69

   type u_XEvent_pad_array is array (0 .. 23) of aliased long;
   type u_XEvent (discr : unsigned := 0) is record
      case discr is
         when 0 =>
            c_type : aliased int;  -- /usr/include/X11/Xlib.h:986
         when 1 =>
            xany : aliased XAnyEvent;  -- /usr/include/X11/Xlib.h:987
         when 2 =>
            xkey : aliased XKeyEvent;  -- /usr/include/X11/Xlib.h:988
         when 3 =>
            xbutton : aliased XButtonEvent;  -- /usr/include/X11/Xlib.h:989
         when 4 =>
            xmotion : aliased XMotionEvent;  -- /usr/include/X11/Xlib.h:990
         when 5 =>
            xcrossing : aliased XCrossingEvent;  -- /usr/include/X11/Xlib.h:991
         when 6 =>
            xfocus : aliased XFocusChangeEvent;  -- /usr/include/X11/Xlib.h:992
         when 7 =>
            xexpose : aliased XExposeEvent;  -- /usr/include/X11/Xlib.h:993
         when 8 =>
            xgraphicsexpose : aliased XGraphicsExposeEvent;  -- /usr/include/X11/Xlib.h:994
         when 9 =>
            xnoexpose : aliased XNoExposeEvent;  -- /usr/include/X11/Xlib.h:995
         when 10 =>
            xvisibility : aliased XVisibilityEvent;  -- /usr/include/X11/Xlib.h:996
         when 11 =>
            xcreatewindow : aliased XCreateWindowEvent;  -- /usr/include/X11/Xlib.h:997
         when 12 =>
            xdestroywindow : aliased XDestroyWindowEvent;  -- /usr/include/X11/Xlib.h:998
         when 13 =>
            xunmap : aliased XUnmapEvent;  -- /usr/include/X11/Xlib.h:999
         when 14 =>
            xmap : aliased XMapEvent;  -- /usr/include/X11/Xlib.h:1000
         when 15 =>
            xmaprequest : aliased XMapRequestEvent;  -- /usr/include/X11/Xlib.h:1001
         when 16 =>
            xreparent : aliased XReparentEvent;  -- /usr/include/X11/Xlib.h:1002
         when 17 =>
            xconfigure : aliased XConfigureEvent;  -- /usr/include/X11/Xlib.h:1003
         when 18 =>
            xgravity : aliased XGravityEvent;  -- /usr/include/X11/Xlib.h:1004
         when 19 =>
            xresizerequest : aliased XResizeRequestEvent;  -- /usr/include/X11/Xlib.h:1005
         when 20 =>
            xconfigurerequest : aliased XConfigureRequestEvent;  -- /usr/include/X11/Xlib.h:1006
         when 21 =>
            xcirculate : aliased XCirculateEvent;  -- /usr/include/X11/Xlib.h:1007
         when 22 =>
            xcirculaterequest : aliased XCirculateRequestEvent;  -- /usr/include/X11/Xlib.h:1008
         when 23 =>
            xproperty : aliased XPropertyEvent;  -- /usr/include/X11/Xlib.h:1009
         when 24 =>
            xselectionclear : aliased XSelectionClearEvent;  -- /usr/include/X11/Xlib.h:1010
         when 25 =>
            xselectionrequest : aliased XSelectionRequestEvent;  -- /usr/include/X11/Xlib.h:1011
         when 26 =>
            xselection : aliased XSelectionEvent;  -- /usr/include/X11/Xlib.h:1012
         when 27 =>
            xcolormap : aliased XColormapEvent;  -- /usr/include/X11/Xlib.h:1013
         when 28 =>
            xclient : aliased XClientMessageEvent;  -- /usr/include/X11/Xlib.h:1014
         when 29 =>
            xmapping : aliased XMappingEvent;  -- /usr/include/X11/Xlib.h:1015
         when 30 =>
            xerror : aliased XErrorEvent;  -- /usr/include/X11/Xlib.h:1016
         when 31 =>
            xkeymap : aliased XKeymapEvent;  -- /usr/include/X11/Xlib.h:1017
         when 32 =>
            xgeneric : aliased XGenericEvent;  -- /usr/include/X11/Xlib.h:1018
         when 33 =>
            xcookie : aliased XGenericEventCookie;  -- /usr/include/X11/Xlib.h:1019
         when others =>
            pad : aliased u_XEvent_pad_array;  -- /usr/include/X11/Xlib.h:1020
      end case;
   end record;
   pragma Convention (C_Pass_By_Copy, u_XEvent);
   pragma Unchecked_Union (u_XEvent);  -- /usr/include/X11/Xlib.h:985

   subtype XEvent is u_XEvent;

   type XCharStruct is record
      lbearing : aliased short;  -- /usr/include/X11/Xlib.h:1030
      rbearing : aliased short;  -- /usr/include/X11/Xlib.h:1031
      width : aliased short;  -- /usr/include/X11/Xlib.h:1032
      ascent : aliased short;  -- /usr/include/X11/Xlib.h:1033
      descent : aliased short;  -- /usr/include/X11/Xlib.h:1034
      attributes : aliased unsigned_short;  -- /usr/include/X11/Xlib.h:1035
   end record;
   pragma Convention (C_Pass_By_Copy, XCharStruct);  -- /usr/include/X11/Xlib.h:1036

   --  skipped anonymous struct anon_70

   type XFontProp is record
      name : aliased X11_X_h.Atom;  -- /usr/include/X11/Xlib.h:1043
      card32 : aliased unsigned_long;  -- /usr/include/X11/Xlib.h:1044
   end record;
   pragma Convention (C_Pass_By_Copy, XFontProp);  -- /usr/include/X11/Xlib.h:1045

   --  skipped anonymous struct anon_71

   type XFontStruct is record
      ext_data : access XExtData;  -- /usr/include/X11/Xlib.h:1048
      fid : aliased X11_X_h.Font;  -- /usr/include/X11/Xlib.h:1049
      direction : aliased unsigned;  -- /usr/include/X11/Xlib.h:1050
      min_char_or_byte2 : aliased unsigned;  -- /usr/include/X11/Xlib.h:1051
      max_char_or_byte2 : aliased unsigned;  -- /usr/include/X11/Xlib.h:1052
      min_byte1 : aliased unsigned;  -- /usr/include/X11/Xlib.h:1053
      max_byte1 : aliased unsigned;  -- /usr/include/X11/Xlib.h:1054
      all_chars_exist : aliased int;  -- /usr/include/X11/Xlib.h:1055
      default_char : aliased unsigned;  -- /usr/include/X11/Xlib.h:1056
      n_properties : aliased int;  -- /usr/include/X11/Xlib.h:1057
      properties : access XFontProp;  -- /usr/include/X11/Xlib.h:1058
      min_bounds : aliased XCharStruct;  -- /usr/include/X11/Xlib.h:1059
      max_bounds : aliased XCharStruct;  -- /usr/include/X11/Xlib.h:1060
      per_char : access XCharStruct;  -- /usr/include/X11/Xlib.h:1061
      ascent : aliased int;  -- /usr/include/X11/Xlib.h:1062
      descent : aliased int;  -- /usr/include/X11/Xlib.h:1063
   end record;
   pragma Convention (C_Pass_By_Copy, XFontStruct);  -- /usr/include/X11/Xlib.h:1064

   --  skipped anonymous struct anon_72

   type XTextItem is record
      chars : Interfaces.C.Strings.chars_ptr;  -- /usr/include/X11/Xlib.h:1070
      nchars : aliased int;  -- /usr/include/X11/Xlib.h:1071
      c_delta : aliased int;  -- /usr/include/X11/Xlib.h:1072
      the_font : aliased X11_X_h.Font;  -- /usr/include/X11/Xlib.h:1073
   end record;
   pragma Convention (C_Pass_By_Copy, XTextItem);  -- /usr/include/X11/Xlib.h:1074

   --  skipped anonymous struct anon_73

   type XChar2b is record
      byte1 : aliased unsigned_char;  -- /usr/include/X11/Xlib.h:1077
      byte2 : aliased unsigned_char;  -- /usr/include/X11/Xlib.h:1078
   end record;
   pragma Convention (C_Pass_By_Copy, XChar2b);  -- /usr/include/X11/Xlib.h:1079

   --  skipped anonymous struct anon_74

   type XTextItem16 is record
      chars : access XChar2b;  -- /usr/include/X11/Xlib.h:1082
      nchars : aliased int;  -- /usr/include/X11/Xlib.h:1083
      c_delta : aliased int;  -- /usr/include/X11/Xlib.h:1084
      the_font : aliased X11_X_h.Font;  -- /usr/include/X11/Xlib.h:1085
   end record;
   pragma Convention (C_Pass_By_Copy, XTextItem16);  -- /usr/include/X11/Xlib.h:1086

   --  skipped anonymous struct anon_75

   type XEDataObject (discr : unsigned := 0) is record
      case discr is
         when 0 =>
            the_display : System.Address;  -- /usr/include/X11/Xlib.h:1089
         when 1 =>
            the_gc : GC;  -- /usr/include/X11/Xlib.h:1090
         when 2 =>
            the_visual : access Visual;  -- /usr/include/X11/Xlib.h:1091
         when 3 =>
            the_screen : access Screen;  -- /usr/include/X11/Xlib.h:1092
         when 4 =>
            pixmap_format : access ScreenFormat;  -- /usr/include/X11/Xlib.h:1093
         when others =>
            font : access XFontStruct;  -- /usr/include/X11/Xlib.h:1094
      end case;
   end record;
   pragma Convention (C_Pass_By_Copy, XEDataObject);
   pragma Unchecked_Union (XEDataObject);  -- /usr/include/X11/Xlib.h:1094

   --  skipped anonymous struct anon_76

   type XFontSetExtents is record
      max_ink_extent : aliased XRectangle;  -- /usr/include/X11/Xlib.h:1097
      max_logical_extent : aliased XRectangle;  -- /usr/include/X11/Xlib.h:1098
   end record;
   pragma Convention (C_Pass_By_Copy, XFontSetExtents);  -- /usr/include/X11/Xlib.h:1099

   --  skipped anonymous struct anon_77

   --  skipped empty struct u_XOM

   type XOM is new System.Address;  -- /usr/include/X11/Xlib.h:1105

   --  skipped empty struct u_XOC

   type XOC is new System.Address;  -- /usr/include/X11/Xlib.h:1106

   type XFontSet is new System.Address;  -- /usr/include/X11/Xlib.h:1106

   type XmbTextItem is record
      chars : Interfaces.C.Strings.chars_ptr;  -- /usr/include/X11/Xlib.h:1109
      nchars : aliased int;  -- /usr/include/X11/Xlib.h:1110
      c_delta : aliased int;  -- /usr/include/X11/Xlib.h:1111
      font_set : XFontSet;  -- /usr/include/X11/Xlib.h:1112
   end record;
   pragma Convention (C_Pass_By_Copy, XmbTextItem);  -- /usr/include/X11/Xlib.h:1113

   --  skipped anonymous struct anon_78

   type XwcTextItem is record
      chars : access wchar_t;  -- /usr/include/X11/Xlib.h:1116
      nchars : aliased int;  -- /usr/include/X11/Xlib.h:1117
      c_delta : aliased int;  -- /usr/include/X11/Xlib.h:1118
      font_set : XFontSet;  -- /usr/include/X11/Xlib.h:1119
   end record;
   pragma Convention (C_Pass_By_Copy, XwcTextItem);  -- /usr/include/X11/Xlib.h:1120

   --  skipped anonymous struct anon_79

   type XOMCharSetList is record
      charset_count : aliased int;  -- /usr/include/X11/Xlib.h:1134
      charset_list : System.Address;  -- /usr/include/X11/Xlib.h:1135
   end record;
   pragma Convention (C_Pass_By_Copy, XOMCharSetList);  -- /usr/include/X11/Xlib.h:1136

   --  skipped anonymous struct anon_80

   type XOrientation is 
     (XOMOrientation_LTR_TTB,
      XOMOrientation_RTL_TTB,
      XOMOrientation_TTB_LTR,
      XOMOrientation_TTB_RTL,
      XOMOrientation_Context);
   pragma Convention (C, XOrientation);  -- /usr/include/X11/Xlib.h:1144

   type XOMOrientation is record
      num_orientation : aliased int;  -- /usr/include/X11/Xlib.h:1147
      orientation : access XOrientation;  -- /usr/include/X11/Xlib.h:1148
   end record;
   pragma Convention (C_Pass_By_Copy, XOMOrientation);  -- /usr/include/X11/Xlib.h:1149

   --  skipped anonymous struct anon_82

   type XOMFontInfo is record
      num_font : aliased int;  -- /usr/include/X11/Xlib.h:1152
      font_struct_list : System.Address;  -- /usr/include/X11/Xlib.h:1153
      font_name_list : System.Address;  -- /usr/include/X11/Xlib.h:1154
   end record;
   pragma Convention (C_Pass_By_Copy, XOMFontInfo);  -- /usr/include/X11/Xlib.h:1155

   --  skipped anonymous struct anon_83

   --  skipped empty struct u_XIM

   type XIM is new System.Address;  -- /usr/include/X11/Xlib.h:1157

   --  skipped empty struct u_XIC

   type XIC is new System.Address;  -- /usr/include/X11/Xlib.h:1158

   type XIMProc is access procedure
        (arg1 : XIM;
         arg2 : XPointer;
         arg3 : XPointer);
   pragma Convention (C, XIMProc);  -- /usr/include/X11/Xlib.h:1160

   type XICProc is access function
        (arg1 : XIC;
         arg2 : XPointer;
         arg3 : XPointer) return int;
   pragma Convention (C, XICProc);  -- /usr/include/X11/Xlib.h:1166

   type XIDProc is access procedure
        (arg1 : System.Address;
         arg2 : XPointer;
         arg3 : XPointer);
   pragma Convention (C, XIDProc);  -- /usr/include/X11/Xlib.h:1172

   subtype XIMStyle is unsigned_long;  -- /usr/include/X11/Xlib.h:1178

   type XIMStyles is record
      count_styles : aliased unsigned_short;  -- /usr/include/X11/Xlib.h:1181
      supported_styles : access XIMStyle;  -- /usr/include/X11/Xlib.h:1182
   end record;
   pragma Convention (C_Pass_By_Copy, XIMStyles);  -- /usr/include/X11/Xlib.h:1183

   --  skipped anonymous struct anon_84

   type XVaNestedList is new System.Address;  -- /usr/include/X11/Xlib.h:1245

   type XIMCallback is record
      client_data : XPointer;  -- /usr/include/X11/Xlib.h:1248
      callback : XIMProc;  -- /usr/include/X11/Xlib.h:1249
   end record;
   pragma Convention (C_Pass_By_Copy, XIMCallback);  -- /usr/include/X11/Xlib.h:1250

   --  skipped anonymous struct anon_85

   type XICCallback is record
      client_data : XPointer;  -- /usr/include/X11/Xlib.h:1253
      callback : XICProc;  -- /usr/include/X11/Xlib.h:1254
   end record;
   pragma Convention (C_Pass_By_Copy, XICCallback);  -- /usr/include/X11/Xlib.h:1255

   --  skipped anonymous struct anon_86

   subtype XIMFeedback is unsigned_long;  -- /usr/include/X11/Xlib.h:1257

   type anon_87 (discr : unsigned := 0) is record
      case discr is
         when 0 =>
            multi_byte : Interfaces.C.Strings.chars_ptr;  -- /usr/include/X11/Xlib.h:1274
         when others =>
            wide_char : access wchar_t;  -- /usr/include/X11/Xlib.h:1275
      end case;
   end record;
   pragma Convention (C_Pass_By_Copy, anon_87);
   pragma Unchecked_Union (anon_87);
   type u_XIMText is record
      length : aliased unsigned_short;  -- /usr/include/X11/Xlib.h:1270
      feedback : access XIMFeedback;  -- /usr/include/X11/Xlib.h:1271
      encoding_is_wchar : aliased int;  -- /usr/include/X11/Xlib.h:1272
      string : anon_87;  -- /usr/include/X11/Xlib.h:1276
   end record;
   pragma Convention (C_Pass_By_Copy, u_XIMText);  -- /usr/include/X11/Xlib.h:1269

   subtype XIMText is u_XIMText;

   subtype XIMPreeditState is unsigned_long;  -- /usr/include/X11/Xlib.h:1279

   type u_XIMPreeditStateNotifyCallbackStruct is record
      state : aliased XIMPreeditState;  -- /usr/include/X11/Xlib.h:1286
   end record;
   pragma Convention (C_Pass_By_Copy, u_XIMPreeditStateNotifyCallbackStruct);  -- /usr/include/X11/Xlib.h:1285

   subtype XIMPreeditStateNotifyCallbackStruct is u_XIMPreeditStateNotifyCallbackStruct;

   subtype XIMResetState is unsigned_long;  -- /usr/include/X11/Xlib.h:1289

   subtype XIMStringConversionFeedback is unsigned_long;  -- /usr/include/X11/Xlib.h:1294

   type anon_88 (discr : unsigned := 0) is record
      case discr is
         when 0 =>
            mbs : Interfaces.C.Strings.chars_ptr;  -- /usr/include/X11/Xlib.h:1308
         when others =>
            wcs : access wchar_t;  -- /usr/include/X11/Xlib.h:1309
      end case;
   end record;
   pragma Convention (C_Pass_By_Copy, anon_88);
   pragma Unchecked_Union (anon_88);
   type u_XIMStringConversionText is record
      length : aliased unsigned_short;  -- /usr/include/X11/Xlib.h:1304
      feedback : access XIMStringConversionFeedback;  -- /usr/include/X11/Xlib.h:1305
      encoding_is_wchar : aliased int;  -- /usr/include/X11/Xlib.h:1306
      string : anon_88;  -- /usr/include/X11/Xlib.h:1310
   end record;
   pragma Convention (C_Pass_By_Copy, u_XIMStringConversionText);  -- /usr/include/X11/Xlib.h:1303

   subtype XIMStringConversionText is u_XIMStringConversionText;

   subtype XIMStringConversionPosition is unsigned_short;  -- /usr/include/X11/Xlib.h:1313

   subtype XIMStringConversionType is unsigned_short;  -- /usr/include/X11/Xlib.h:1315

   subtype XIMStringConversionOperation is unsigned_short;  -- /usr/include/X11/Xlib.h:1322

   type XIMCaretDirection is 
     (XIMForwardChar,
      XIMBackwardChar,
      XIMForwardWord,
      XIMBackwardWord,
      XIMCaretUp,
      XIMCaretDown,
      XIMNextLine,
      XIMPreviousLine,
      XIMLineStart,
      XIMLineEnd,
      XIMAbsolutePosition,
      XIMDontChange);
   pragma Convention (C, XIMCaretDirection);  -- /usr/include/X11/Xlib.h:1335

   type u_XIMStringConversionCallbackStruct is record
      position : aliased XIMStringConversionPosition;  -- /usr/include/X11/Xlib.h:1338
      direction : aliased XIMCaretDirection;  -- /usr/include/X11/Xlib.h:1339
      operation : aliased XIMStringConversionOperation;  -- /usr/include/X11/Xlib.h:1340
      factor : aliased unsigned_short;  -- /usr/include/X11/Xlib.h:1341
      text : access XIMStringConversionText;  -- /usr/include/X11/Xlib.h:1342
   end record;
   pragma Convention (C_Pass_By_Copy, u_XIMStringConversionCallbackStruct);  -- /usr/include/X11/Xlib.h:1337

   subtype XIMStringConversionCallbackStruct is u_XIMStringConversionCallbackStruct;

   type u_XIMPreeditDrawCallbackStruct is record
      caret : aliased int;  -- /usr/include/X11/Xlib.h:1346
      chg_first : aliased int;  -- /usr/include/X11/Xlib.h:1347
      chg_length : aliased int;  -- /usr/include/X11/Xlib.h:1348
      text : access XIMText;  -- /usr/include/X11/Xlib.h:1349
   end record;
   pragma Convention (C_Pass_By_Copy, u_XIMPreeditDrawCallbackStruct);  -- /usr/include/X11/Xlib.h:1345

   subtype XIMPreeditDrawCallbackStruct is u_XIMPreeditDrawCallbackStruct;

   type XIMCaretStyle is 
     (XIMIsInvisible,
      XIMIsPrimary,
      XIMIsSecondary);
   pragma Convention (C, XIMCaretStyle);  -- /usr/include/X11/Xlib.h:1356

   type u_XIMPreeditCaretCallbackStruct is record
      position : aliased int;  -- /usr/include/X11/Xlib.h:1359
      direction : aliased XIMCaretDirection;  -- /usr/include/X11/Xlib.h:1360
      style : aliased XIMCaretStyle;  -- /usr/include/X11/Xlib.h:1361
   end record;
   pragma Convention (C_Pass_By_Copy, u_XIMPreeditCaretCallbackStruct);  -- /usr/include/X11/Xlib.h:1358

   subtype XIMPreeditCaretCallbackStruct is u_XIMPreeditCaretCallbackStruct;

   type XIMStatusDataType is 
     (XIMTextType,
      XIMBitmapType);
   pragma Convention (C, XIMStatusDataType);  -- /usr/include/X11/Xlib.h:1367

   type anon_92 (discr : unsigned := 0) is record
      case discr is
         when 0 =>
            text : access XIMText;  -- /usr/include/X11/Xlib.h:1372
         when others =>
            bitmap : aliased X11_X_h.Pixmap;  -- /usr/include/X11/Xlib.h:1373
      end case;
   end record;
   pragma Convention (C_Pass_By_Copy, anon_92);
   pragma Unchecked_Union (anon_92);
   type u_XIMStatusDrawCallbackStruct is record
      c_type : aliased XIMStatusDataType;  -- /usr/include/X11/Xlib.h:1370
      data : anon_92;  -- /usr/include/X11/Xlib.h:1374
   end record;
   pragma Convention (C_Pass_By_Copy, u_XIMStatusDrawCallbackStruct);  -- /usr/include/X11/Xlib.h:1369

   subtype XIMStatusDrawCallbackStruct is u_XIMStatusDrawCallbackStruct;

   type u_XIMHotKeyTrigger is record
      the_keysym : aliased X11_X_h.KeySym;  -- /usr/include/X11/Xlib.h:1378
      modifier : aliased int;  -- /usr/include/X11/Xlib.h:1379
      modifier_mask : aliased int;  -- /usr/include/X11/Xlib.h:1380
   end record;
   pragma Convention (C_Pass_By_Copy, u_XIMHotKeyTrigger);  -- /usr/include/X11/Xlib.h:1377

   subtype XIMHotKeyTrigger is u_XIMHotKeyTrigger;

   type u_XIMHotKeyTriggers is record
      num_hot_key : aliased int;  -- /usr/include/X11/Xlib.h:1384
      key : access XIMHotKeyTrigger;  -- /usr/include/X11/Xlib.h:1385
   end record;
   pragma Convention (C_Pass_By_Copy, u_XIMHotKeyTriggers);  -- /usr/include/X11/Xlib.h:1383

   subtype XIMHotKeyTriggers is u_XIMHotKeyTriggers;

   subtype XIMHotKeyState is unsigned_long;  -- /usr/include/X11/Xlib.h:1388

   type XIMValuesList is record
      count_values : aliased unsigned_short;  -- /usr/include/X11/Xlib.h:1394
      supported_values : System.Address;  -- /usr/include/X11/Xlib.h:1395
   end record;
   pragma Convention (C_Pass_By_Copy, XIMValuesList);  -- /usr/include/X11/Xlib.h:1396

   --  skipped anonymous struct anon_93

   function XLoadQueryFont (arg1 : System.Address; arg2 : Interfaces.C.Strings.chars_ptr) return access XFontStruct;  -- /usr/include/X11/Xlib.h:1406
   pragma Import (C, XLoadQueryFont, "XLoadQueryFont");

   function XQueryFont (arg1 : System.Address; arg2 : X11_X_h.XID) return access XFontStruct;  -- /usr/include/X11/Xlib.h:1411
   pragma Import (C, XQueryFont, "XQueryFont");

   function XGetMotionEvents
     (arg1 : System.Address;
      arg2 : X11_X_h.Window;
      arg3 : X11_X_h.Time;
      arg4 : X11_X_h.Time;
      arg5 : access int) return access XTimeCoord;  -- /usr/include/X11/Xlib.h:1417
   pragma Import (C, XGetMotionEvents, "XGetMotionEvents");

   function XDeleteModifiermapEntry
     (arg1 : access XModifierKeymap;
      arg2 : X11_X_h.KeyCode;
      arg3 : int) return access XModifierKeymap;  -- /usr/include/X11/Xlib.h:1425
   pragma Import (C, XDeleteModifiermapEntry, "XDeleteModifiermapEntry");

   function XGetModifierMapping (arg1 : System.Address) return access XModifierKeymap;  -- /usr/include/X11/Xlib.h:1435
   pragma Import (C, XGetModifierMapping, "XGetModifierMapping");

   function XInsertModifiermapEntry
     (arg1 : access XModifierKeymap;
      arg2 : X11_X_h.KeyCode;
      arg3 : int) return access XModifierKeymap;  -- /usr/include/X11/Xlib.h:1439
   pragma Import (C, XInsertModifiermapEntry, "XInsertModifiermapEntry");

   function XNewModifiermap (arg1 : int) return access XModifierKeymap;  -- /usr/include/X11/Xlib.h:1449
   pragma Import (C, XNewModifiermap, "XNewModifiermap");

   function XCreateImage
     (arg1 : System.Address;
      arg2 : access Visual;
      arg3 : unsigned;
      arg4 : int;
      arg5 : int;
      arg6 : Interfaces.C.Strings.chars_ptr;
      arg7 : unsigned;
      arg8 : unsigned;
      arg9 : int;
      arg10 : int) return access XImage;  -- /usr/include/X11/Xlib.h:1453
   pragma Import (C, XCreateImage, "XCreateImage");

   function XInitImage (arg1 : access XImage) return int;  -- /usr/include/X11/Xlib.h:1465
   pragma Import (C, XInitImage, "XInitImage");

   function XGetImage
     (arg1 : System.Address;
      arg2 : X11_X_h.Drawable;
      arg3 : int;
      arg4 : int;
      arg5 : unsigned;
      arg6 : unsigned;
      arg7 : unsigned_long;
      arg8 : int) return access XImage;  -- /usr/include/X11/Xlib.h:1468
   pragma Import (C, XGetImage, "XGetImage");

   function XGetSubImage
     (arg1 : System.Address;
      arg2 : X11_X_h.Drawable;
      arg3 : int;
      arg4 : int;
      arg5 : unsigned;
      arg6 : unsigned;
      arg7 : unsigned_long;
      arg8 : int;
      arg9 : access XImage;
      arg10 : int;
      arg11 : int) return access XImage;  -- /usr/include/X11/Xlib.h:1478
   pragma Import (C, XGetSubImage, "XGetSubImage");

   function XOpenDisplay (arg1 : Interfaces.C.Strings.chars_ptr) return System.Address;  -- /usr/include/X11/Xlib.h:1495
   pragma Import (C, XOpenDisplay, "XOpenDisplay");

   procedure XrmInitialize;  -- /usr/include/X11/Xlib.h:1499
   pragma Import (C, XrmInitialize, "XrmInitialize");

   function XFetchBytes (arg1 : System.Address; arg2 : access int) return Interfaces.C.Strings.chars_ptr;  -- /usr/include/X11/Xlib.h:1503
   pragma Import (C, XFetchBytes, "XFetchBytes");

   function XFetchBuffer
     (arg1 : System.Address;
      arg2 : access int;
      arg3 : int) return Interfaces.C.Strings.chars_ptr;  -- /usr/include/X11/Xlib.h:1507
   pragma Import (C, XFetchBuffer, "XFetchBuffer");

   function XGetAtomName (arg1 : System.Address; arg2 : X11_X_h.Atom) return Interfaces.C.Strings.chars_ptr;  -- /usr/include/X11/Xlib.h:1512
   pragma Import (C, XGetAtomName, "XGetAtomName");

   function XGetAtomNames
     (arg1 : System.Address;
      arg2 : access X11_X_h.Atom;
      arg3 : int;
      arg4 : System.Address) return int;  -- /usr/include/X11/Xlib.h:1516
   pragma Import (C, XGetAtomNames, "XGetAtomNames");

   function XGetDefault
     (arg1 : System.Address;
      arg2 : Interfaces.C.Strings.chars_ptr;
      arg3 : Interfaces.C.Strings.chars_ptr) return Interfaces.C.Strings.chars_ptr;  -- /usr/include/X11/Xlib.h:1522
   pragma Import (C, XGetDefault, "XGetDefault");

   function XDisplayName (arg1 : Interfaces.C.Strings.chars_ptr) return Interfaces.C.Strings.chars_ptr;  -- /usr/include/X11/Xlib.h:1527
   pragma Import (C, XDisplayName, "XDisplayName");

   function XKeysymToString (arg1 : X11_X_h.KeySym) return Interfaces.C.Strings.chars_ptr;  -- /usr/include/X11/Xlib.h:1530
   pragma Import (C, XKeysymToString, "XKeysymToString");

   function XSynchronize (arg1 : System.Address; arg2 : int) return access function (arg1 : System.Address) return int;  -- /usr/include/X11/Xlib.h:1534
   pragma Import (C, XSynchronize, "XSynchronize");

   function XSetAfterFunction (arg1 : System.Address; arg2 : access function (arg1 : System.Address) return int) return access function (arg1 : System.Address) return int;  -- /usr/include/X11/Xlib.h:1540
   pragma Import (C, XSetAfterFunction, "XSetAfterFunction");

   function XInternAtom
     (arg1 : System.Address;
      arg2 : Interfaces.C.Strings.chars_ptr;
      arg3 : int) return X11_X_h.Atom;  -- /usr/include/X11/Xlib.h:1548
   pragma Import (C, XInternAtom, "XInternAtom");

   function XInternAtoms
     (arg1 : System.Address;
      arg2 : System.Address;
      arg3 : int;
      arg4 : int;
      arg5 : access X11_X_h.Atom) return int;  -- /usr/include/X11/Xlib.h:1553
   pragma Import (C, XInternAtoms, "XInternAtoms");

   function XCopyColormapAndFree (arg1 : System.Address; arg2 : X11_X_h.Colormap) return X11_X_h.Colormap;  -- /usr/include/X11/Xlib.h:1560
   pragma Import (C, XCopyColormapAndFree, "XCopyColormapAndFree");

   function XCreateColormap
     (arg1 : System.Address;
      arg2 : X11_X_h.Window;
      arg3 : access Visual;
      arg4 : int) return X11_X_h.Colormap;  -- /usr/include/X11/Xlib.h:1564
   pragma Import (C, XCreateColormap, "XCreateColormap");

   function XCreatePixmapCursor
     (arg1 : System.Address;
      arg2 : X11_X_h.Pixmap;
      arg3 : X11_X_h.Pixmap;
      arg4 : access XColor;
      arg5 : access XColor;
      arg6 : unsigned;
      arg7 : unsigned) return X11_X_h.Cursor;  -- /usr/include/X11/Xlib.h:1570
   pragma Import (C, XCreatePixmapCursor, "XCreatePixmapCursor");

   function XCreateGlyphCursor
     (arg1 : System.Address;
      arg2 : X11_X_h.Font;
      arg3 : X11_X_h.Font;
      arg4 : unsigned;
      arg5 : unsigned;
      arg6 : access constant XColor;
      arg7 : access constant XColor) return X11_X_h.Cursor;  -- /usr/include/X11/Xlib.h:1579
   pragma Import (C, XCreateGlyphCursor, "XCreateGlyphCursor");

   function XCreateFontCursor (arg1 : System.Address; arg2 : unsigned) return X11_X_h.Cursor;  -- /usr/include/X11/Xlib.h:1588
   pragma Import (C, XCreateFontCursor, "XCreateFontCursor");

   function XLoadFont (arg1 : System.Address; arg2 : Interfaces.C.Strings.chars_ptr) return X11_X_h.Font;  -- /usr/include/X11/Xlib.h:1592
   pragma Import (C, XLoadFont, "XLoadFont");

   function XCreateGC
     (arg1 : System.Address;
      arg2 : X11_X_h.Drawable;
      arg3 : unsigned_long;
      arg4 : access XGCValues) return GC;  -- /usr/include/X11/Xlib.h:1596
   pragma Import (C, XCreateGC, "XCreateGC");

   function XGContextFromGC (arg1 : GC) return X11_X_h.GContext;  -- /usr/include/X11/Xlib.h:1602
   pragma Import (C, XGContextFromGC, "XGContextFromGC");

   procedure XFlushGC (arg1 : System.Address; arg2 : GC);  -- /usr/include/X11/Xlib.h:1605
   pragma Import (C, XFlushGC, "XFlushGC");

   function XCreatePixmap
     (arg1 : System.Address;
      arg2 : X11_X_h.Drawable;
      arg3 : unsigned;
      arg4 : unsigned;
      arg5 : unsigned) return X11_X_h.Pixmap;  -- /usr/include/X11/Xlib.h:1609
   pragma Import (C, XCreatePixmap, "XCreatePixmap");

   function XCreateBitmapFromData
     (arg1 : System.Address;
      arg2 : X11_X_h.Drawable;
      arg3 : Interfaces.C.Strings.chars_ptr;
      arg4 : unsigned;
      arg5 : unsigned) return X11_X_h.Pixmap;  -- /usr/include/X11/Xlib.h:1616
   pragma Import (C, XCreateBitmapFromData, "XCreateBitmapFromData");

   function XCreatePixmapFromBitmapData
     (arg1 : System.Address;
      arg2 : X11_X_h.Drawable;
      arg3 : Interfaces.C.Strings.chars_ptr;
      arg4 : unsigned;
      arg5 : unsigned;
      arg6 : unsigned_long;
      arg7 : unsigned_long;
      arg8 : unsigned) return X11_X_h.Pixmap;  -- /usr/include/X11/Xlib.h:1623
   pragma Import (C, XCreatePixmapFromBitmapData, "XCreatePixmapFromBitmapData");

   function XCreateSimpleWindow
     (arg1 : System.Address;
      arg2 : X11_X_h.Window;
      arg3 : int;
      arg4 : int;
      arg5 : unsigned;
      arg6 : unsigned;
      arg7 : unsigned;
      arg8 : unsigned_long;
      arg9 : unsigned_long) return X11_X_h.Window;  -- /usr/include/X11/Xlib.h:1633
   pragma Import (C, XCreateSimpleWindow, "XCreateSimpleWindow");

   function XGetSelectionOwner (arg1 : System.Address; arg2 : X11_X_h.Atom) return X11_X_h.Window;  -- /usr/include/X11/Xlib.h:1644
   pragma Import (C, XGetSelectionOwner, "XGetSelectionOwner");

   function XCreateWindow
     (arg1 : System.Address;
      arg2 : X11_X_h.Window;
      arg3 : int;
      arg4 : int;
      arg5 : unsigned;
      arg6 : unsigned;
      arg7 : unsigned;
      arg8 : int;
      arg9 : unsigned;
      arg10 : access Visual;
      arg11 : unsigned_long;
      arg12 : access XSetWindowAttributes) return X11_X_h.Window;  -- /usr/include/X11/Xlib.h:1648
   pragma Import (C, XCreateWindow, "XCreateWindow");

   function XListInstalledColormaps
     (arg1 : System.Address;
      arg2 : X11_X_h.Window;
      arg3 : access int) return access X11_X_h.Colormap;  -- /usr/include/X11/Xlib.h:1662
   pragma Import (C, XListInstalledColormaps, "XListInstalledColormaps");

   function XListFonts
     (arg1 : System.Address;
      arg2 : Interfaces.C.Strings.chars_ptr;
      arg3 : int;
      arg4 : access int) return System.Address;  -- /usr/include/X11/Xlib.h:1667
   pragma Import (C, XListFonts, "XListFonts");

   function XListFontsWithInfo
     (arg1 : System.Address;
      arg2 : Interfaces.C.Strings.chars_ptr;
      arg3 : int;
      arg4 : access int;
      arg5 : System.Address) return System.Address;  -- /usr/include/X11/Xlib.h:1673
   pragma Import (C, XListFontsWithInfo, "XListFontsWithInfo");

   function XGetFontPath (arg1 : System.Address; arg2 : access int) return System.Address;  -- /usr/include/X11/Xlib.h:1680
   pragma Import (C, XGetFontPath, "XGetFontPath");

   function XListExtensions (arg1 : System.Address; arg2 : access int) return System.Address;  -- /usr/include/X11/Xlib.h:1684
   pragma Import (C, XListExtensions, "XListExtensions");

   function XListProperties
     (arg1 : System.Address;
      arg2 : X11_X_h.Window;
      arg3 : access int) return access X11_X_h.Atom;  -- /usr/include/X11/Xlib.h:1688
   pragma Import (C, XListProperties, "XListProperties");

   function XListHosts
     (arg1 : System.Address;
      arg2 : access int;
      arg3 : access int) return access XHostAddress;  -- /usr/include/X11/Xlib.h:1693
   pragma Import (C, XListHosts, "XListHosts");

   function XKeycodeToKeysym
     (arg1 : System.Address;
      arg2 : X11_X_h.KeyCode;
      arg3 : int) return X11_X_h.KeySym;  -- /usr/include/X11/Xlib.h:1699
   pragma Import (C, XKeycodeToKeysym, "XKeycodeToKeysym");

   function c_XLookupKeysym (arg1 : access XKeyEvent; arg2 : int) return X11_X_h.KeySym;  -- /usr/include/X11/Xlib.h:1708
   pragma Import (C, c_XLookupKeysym, "XLookupKeysym");

   function XGetKeyboardMapping
     (arg1 : System.Address;
      arg2 : X11_X_h.KeyCode;
      arg3 : int;
      arg4 : access int) return access X11_X_h.KeySym;  -- /usr/include/X11/Xlib.h:1712
   pragma Import (C, XGetKeyboardMapping, "XGetKeyboardMapping");

   function XStringToKeysym (arg1 : Interfaces.C.Strings.chars_ptr) return X11_X_h.KeySym;  -- /usr/include/X11/Xlib.h:1722
   pragma Import (C, XStringToKeysym, "XStringToKeysym");

   function XMaxRequestSize (arg1 : System.Address) return long;  -- /usr/include/X11/Xlib.h:1725
   pragma Import (C, XMaxRequestSize, "XMaxRequestSize");

   function XExtendedMaxRequestSize (arg1 : System.Address) return long;  -- /usr/include/X11/Xlib.h:1728
   pragma Import (C, XExtendedMaxRequestSize, "XExtendedMaxRequestSize");

   function XResourceManagerString (arg1 : System.Address) return Interfaces.C.Strings.chars_ptr;  -- /usr/include/X11/Xlib.h:1731
   pragma Import (C, XResourceManagerString, "XResourceManagerString");

   function XScreenResourceString (arg1 : access Screen) return Interfaces.C.Strings.chars_ptr;  -- /usr/include/X11/Xlib.h:1734
   pragma Import (C, XScreenResourceString, "XScreenResourceString");

   function XDisplayMotionBufferSize (arg1 : System.Address) return unsigned_long;  -- /usr/include/X11/Xlib.h:1737
   pragma Import (C, XDisplayMotionBufferSize, "XDisplayMotionBufferSize");

   function XVisualIDFromVisual (arg1 : access Visual) return X11_X_h.VisualID;  -- /usr/include/X11/Xlib.h:1740
   pragma Import (C, XVisualIDFromVisual, "XVisualIDFromVisual");

   function XInitThreads return int;  -- /usr/include/X11/Xlib.h:1746
   pragma Import (C, XInitThreads, "XInitThreads");

   procedure XLockDisplay (arg1 : System.Address);  -- /usr/include/X11/Xlib.h:1750
   pragma Import (C, XLockDisplay, "XLockDisplay");

   procedure XUnlockDisplay (arg1 : System.Address);  -- /usr/include/X11/Xlib.h:1754
   pragma Import (C, XUnlockDisplay, "XUnlockDisplay");

   function XInitExtension (arg1 : System.Address; arg2 : Interfaces.C.Strings.chars_ptr) return access XExtCodes;  -- /usr/include/X11/Xlib.h:1760
   pragma Import (C, XInitExtension, "XInitExtension");

   function XAddExtension (arg1 : System.Address) return access XExtCodes;  -- /usr/include/X11/Xlib.h:1765
   pragma Import (C, XAddExtension, "XAddExtension");

   function XFindOnExtensionList (arg1 : System.Address; arg2 : int) return access XExtData;  -- /usr/include/X11/Xlib.h:1768
   pragma Import (C, XFindOnExtensionList, "XFindOnExtensionList");

   function XEHeadOfExtensionList (arg1 : XEDataObject) return System.Address;  -- /usr/include/X11/Xlib.h:1772
   pragma Import (C, XEHeadOfExtensionList, "XEHeadOfExtensionList");

   function XRootWindow (arg1 : System.Address; arg2 : int) return X11_X_h.Window;  -- /usr/include/X11/Xlib.h:1777
   pragma Import (C, XRootWindow, "XRootWindow");

   function XDefaultRootWindow (arg1 : System.Address) return X11_X_h.Window;  -- /usr/include/X11/Xlib.h:1781
   pragma Import (C, XDefaultRootWindow, "XDefaultRootWindow");

   function XRootWindowOfScreen (arg1 : access Screen) return X11_X_h.Window;  -- /usr/include/X11/Xlib.h:1784
   pragma Import (C, XRootWindowOfScreen, "XRootWindowOfScreen");

   function XDefaultVisual (arg1 : System.Address; arg2 : int) return access Visual;  -- /usr/include/X11/Xlib.h:1787
   pragma Import (C, XDefaultVisual, "XDefaultVisual");

   function XDefaultVisualOfScreen (arg1 : access Screen) return access Visual;  -- /usr/include/X11/Xlib.h:1791
   pragma Import (C, XDefaultVisualOfScreen, "XDefaultVisualOfScreen");

   function XDefaultGC (arg1 : System.Address; arg2 : int) return GC;  -- /usr/include/X11/Xlib.h:1794
   pragma Import (C, XDefaultGC, "XDefaultGC");

   function XDefaultGCOfScreen (arg1 : access Screen) return GC;  -- /usr/include/X11/Xlib.h:1798
   pragma Import (C, XDefaultGCOfScreen, "XDefaultGCOfScreen");

   function XBlackPixel (arg1 : System.Address; arg2 : int) return unsigned_long;  -- /usr/include/X11/Xlib.h:1801
   pragma Import (C, XBlackPixel, "XBlackPixel");

   function XWhitePixel (arg1 : System.Address; arg2 : int) return unsigned_long;  -- /usr/include/X11/Xlib.h:1805
   pragma Import (C, XWhitePixel, "XWhitePixel");

   function XAllPlanes return unsigned_long;  -- /usr/include/X11/Xlib.h:1809
   pragma Import (C, XAllPlanes, "XAllPlanes");

   function XBlackPixelOfScreen (arg1 : access Screen) return unsigned_long;  -- /usr/include/X11/Xlib.h:1812
   pragma Import (C, XBlackPixelOfScreen, "XBlackPixelOfScreen");

   function XWhitePixelOfScreen (arg1 : access Screen) return unsigned_long;  -- /usr/include/X11/Xlib.h:1815
   pragma Import (C, XWhitePixelOfScreen, "XWhitePixelOfScreen");

   function XNextRequest (arg1 : System.Address) return unsigned_long;  -- /usr/include/X11/Xlib.h:1818
   pragma Import (C, XNextRequest, "XNextRequest");

   function XLastKnownRequestProcessed (arg1 : System.Address) return unsigned_long;  -- /usr/include/X11/Xlib.h:1821
   pragma Import (C, XLastKnownRequestProcessed, "XLastKnownRequestProcessed");

   function XServerVendor (arg1 : System.Address) return Interfaces.C.Strings.chars_ptr;  -- /usr/include/X11/Xlib.h:1824
   pragma Import (C, XServerVendor, "XServerVendor");

   function XDisplayString (arg1 : System.Address) return Interfaces.C.Strings.chars_ptr;  -- /usr/include/X11/Xlib.h:1827
   pragma Import (C, XDisplayString, "XDisplayString");

   function XDefaultColormap (arg1 : System.Address; arg2 : int) return X11_X_h.Colormap;  -- /usr/include/X11/Xlib.h:1830
   pragma Import (C, XDefaultColormap, "XDefaultColormap");

   function XDefaultColormapOfScreen (arg1 : access Screen) return X11_X_h.Colormap;  -- /usr/include/X11/Xlib.h:1834
   pragma Import (C, XDefaultColormapOfScreen, "XDefaultColormapOfScreen");

   function XDisplayOfScreen (arg1 : access Screen) return System.Address;  -- /usr/include/X11/Xlib.h:1837
   pragma Import (C, XDisplayOfScreen, "XDisplayOfScreen");

   function XScreenOfDisplay (arg1 : System.Address; arg2 : int) return access Screen;  -- /usr/include/X11/Xlib.h:1840
   pragma Import (C, XScreenOfDisplay, "XScreenOfDisplay");

   function XDefaultScreenOfDisplay (arg1 : System.Address) return access Screen;  -- /usr/include/X11/Xlib.h:1844
   pragma Import (C, XDefaultScreenOfDisplay, "XDefaultScreenOfDisplay");

   function XEventMaskOfScreen (arg1 : access Screen) return long;  -- /usr/include/X11/Xlib.h:1847
   pragma Import (C, XEventMaskOfScreen, "XEventMaskOfScreen");

   function XScreenNumberOfScreen (arg1 : access Screen) return int;  -- /usr/include/X11/Xlib.h:1851
   pragma Import (C, XScreenNumberOfScreen, "XScreenNumberOfScreen");

   type XErrorHandler is access function (arg1 : System.Address; arg2 : access XErrorEvent) return int;
   pragma Convention (C, XErrorHandler);  -- /usr/include/X11/Xlib.h:1855

   function XSetErrorHandler (arg1 : XErrorHandler) return XErrorHandler;  -- /usr/include/X11/Xlib.h:1860
   pragma Import (C, XSetErrorHandler, "XSetErrorHandler");

   type XIOErrorHandler is access function (arg1 : System.Address) return int;
   pragma Convention (C, XIOErrorHandler);  -- /usr/include/X11/Xlib.h:1865

   function XSetIOErrorHandler (arg1 : XIOErrorHandler) return XIOErrorHandler;  -- /usr/include/X11/Xlib.h:1869
   pragma Import (C, XSetIOErrorHandler, "XSetIOErrorHandler");

   function XListPixmapFormats (arg1 : System.Address; arg2 : access int) return access XPixmapFormatValues;  -- /usr/include/X11/Xlib.h:1874
   pragma Import (C, XListPixmapFormats, "XListPixmapFormats");

   function XListDepths
     (arg1 : System.Address;
      arg2 : int;
      arg3 : access int) return access int;  -- /usr/include/X11/Xlib.h:1878
   pragma Import (C, XListDepths, "XListDepths");

   function XReconfigureWMWindow
     (arg1 : System.Address;
      arg2 : X11_X_h.Window;
      arg3 : int;
      arg4 : unsigned;
      arg5 : access XWindowChanges) return int;  -- /usr/include/X11/Xlib.h:1886
   pragma Import (C, XReconfigureWMWindow, "XReconfigureWMWindow");

   function XGetWMProtocols
     (arg1 : System.Address;
      arg2 : X11_X_h.Window;
      arg3 : System.Address;
      arg4 : access int) return int;  -- /usr/include/X11/Xlib.h:1894
   pragma Import (C, XGetWMProtocols, "XGetWMProtocols");

   function XSetWMProtocols
     (arg1 : System.Address;
      arg2 : X11_X_h.Window;
      arg3 : access X11_X_h.Atom;
      arg4 : int) return int;  -- /usr/include/X11/Xlib.h:1900
   pragma Import (C, XSetWMProtocols, "XSetWMProtocols");

   function XIconifyWindow
     (arg1 : System.Address;
      arg2 : X11_X_h.Window;
      arg3 : int) return int;  -- /usr/include/X11/Xlib.h:1906
   pragma Import (C, XIconifyWindow, "XIconifyWindow");

   function XWithdrawWindow
     (arg1 : System.Address;
      arg2 : X11_X_h.Window;
      arg3 : int) return int;  -- /usr/include/X11/Xlib.h:1911
   pragma Import (C, XWithdrawWindow, "XWithdrawWindow");

   function XGetCommand
     (arg1 : System.Address;
      arg2 : X11_X_h.Window;
      arg3 : System.Address;
      arg4 : access int) return int;  -- /usr/include/X11/Xlib.h:1916
   pragma Import (C, XGetCommand, "XGetCommand");

   function XGetWMColormapWindows
     (arg1 : System.Address;
      arg2 : X11_X_h.Window;
      arg3 : System.Address;
      arg4 : access int) return int;  -- /usr/include/X11/Xlib.h:1922
   pragma Import (C, XGetWMColormapWindows, "XGetWMColormapWindows");

   function XSetWMColormapWindows
     (arg1 : System.Address;
      arg2 : X11_X_h.Window;
      arg3 : access X11_X_h.Window;
      arg4 : int) return int;  -- /usr/include/X11/Xlib.h:1928
   pragma Import (C, XSetWMColormapWindows, "XSetWMColormapWindows");

   procedure XFreeStringList (arg1 : System.Address);  -- /usr/include/X11/Xlib.h:1934
   pragma Import (C, XFreeStringList, "XFreeStringList");

   function XSetTransientForHint
     (arg1 : System.Address;
      arg2 : X11_X_h.Window;
      arg3 : X11_X_h.Window) return int;  -- /usr/include/X11/Xlib.h:1937
   pragma Import (C, XSetTransientForHint, "XSetTransientForHint");

   function XActivateScreenSaver (arg1 : System.Address) return int;  -- /usr/include/X11/Xlib.h:1945
   pragma Import (C, XActivateScreenSaver, "XActivateScreenSaver");

   function XAddHost (arg1 : System.Address; arg2 : access XHostAddress) return int;  -- /usr/include/X11/Xlib.h:1949
   pragma Import (C, XAddHost, "XAddHost");

   function XAddHosts
     (arg1 : System.Address;
      arg2 : access XHostAddress;
      arg3 : int) return int;  -- /usr/include/X11/Xlib.h:1954
   pragma Import (C, XAddHosts, "XAddHosts");

   function XAddToExtensionList (arg1 : System.Address; arg2 : access XExtData) return int;  -- /usr/include/X11/Xlib.h:1960
   pragma Import (C, XAddToExtensionList, "XAddToExtensionList");

   function XAddToSaveSet (arg1 : System.Address; arg2 : X11_X_h.Window) return int;  -- /usr/include/X11/Xlib.h:1965
   pragma Import (C, XAddToSaveSet, "XAddToSaveSet");

   function XAllocColor
     (arg1 : System.Address;
      arg2 : X11_X_h.Colormap;
      arg3 : access XColor) return int;  -- /usr/include/X11/Xlib.h:1970
   pragma Import (C, XAllocColor, "XAllocColor");

   function XAllocColorCells
     (arg1 : System.Address;
      arg2 : X11_X_h.Colormap;
      arg3 : int;
      arg4 : access unsigned_long;
      arg5 : unsigned;
      arg6 : access unsigned_long;
      arg7 : unsigned) return int;  -- /usr/include/X11/Xlib.h:1976
   pragma Import (C, XAllocColorCells, "XAllocColorCells");

   function XAllocColorPlanes
     (arg1 : System.Address;
      arg2 : X11_X_h.Colormap;
      arg3 : int;
      arg4 : access unsigned_long;
      arg5 : int;
      arg6 : int;
      arg7 : int;
      arg8 : int;
      arg9 : access unsigned_long;
      arg10 : access unsigned_long;
      arg11 : access unsigned_long) return int;  -- /usr/include/X11/Xlib.h:1986
   pragma Import (C, XAllocColorPlanes, "XAllocColorPlanes");

   function XAllocNamedColor
     (arg1 : System.Address;
      arg2 : X11_X_h.Colormap;
      arg3 : Interfaces.C.Strings.chars_ptr;
      arg4 : access XColor;
      arg5 : access XColor) return int;  -- /usr/include/X11/Xlib.h:2000
   pragma Import (C, XAllocNamedColor, "XAllocNamedColor");

   function XAllowEvents
     (arg1 : System.Address;
      arg2 : int;
      arg3 : X11_X_h.Time) return int;  -- /usr/include/X11/Xlib.h:2008
   pragma Import (C, XAllowEvents, "XAllowEvents");

   function XAutoRepeatOff (arg1 : System.Address) return int;  -- /usr/include/X11/Xlib.h:2014
   pragma Import (C, XAutoRepeatOff, "XAutoRepeatOff");

   function XAutoRepeatOn (arg1 : System.Address) return int;  -- /usr/include/X11/Xlib.h:2018
   pragma Import (C, XAutoRepeatOn, "XAutoRepeatOn");

   function XBell (arg1 : System.Address; arg2 : int) return int;  -- /usr/include/X11/Xlib.h:2022
   pragma Import (C, XBell, "XBell");

   function XBitmapBitOrder (arg1 : System.Address) return int;  -- /usr/include/X11/Xlib.h:2027
   pragma Import (C, XBitmapBitOrder, "XBitmapBitOrder");

   function XBitmapPad (arg1 : System.Address) return int;  -- /usr/include/X11/Xlib.h:2031
   pragma Import (C, XBitmapPad, "XBitmapPad");

   function XBitmapUnit (arg1 : System.Address) return int;  -- /usr/include/X11/Xlib.h:2035
   pragma Import (C, XBitmapUnit, "XBitmapUnit");

   function XCellsOfScreen (arg1 : access Screen) return int;  -- /usr/include/X11/Xlib.h:2039
   pragma Import (C, XCellsOfScreen, "XCellsOfScreen");

   function XChangeActivePointerGrab
     (arg1 : System.Address;
      arg2 : unsigned;
      arg3 : X11_X_h.Cursor;
      arg4 : X11_X_h.Time) return int;  -- /usr/include/X11/Xlib.h:2043
   pragma Import (C, XChangeActivePointerGrab, "XChangeActivePointerGrab");

   function XChangeGC
     (arg1 : System.Address;
      arg2 : GC;
      arg3 : unsigned_long;
      arg4 : access XGCValues) return int;  -- /usr/include/X11/Xlib.h:2050
   pragma Import (C, XChangeGC, "XChangeGC");

   function XChangeKeyboardControl
     (arg1 : System.Address;
      arg2 : unsigned_long;
      arg3 : access XKeyboardControl) return int;  -- /usr/include/X11/Xlib.h:2057
   pragma Import (C, XChangeKeyboardControl, "XChangeKeyboardControl");

   function XChangeKeyboardMapping
     (arg1 : System.Address;
      arg2 : int;
      arg3 : int;
      arg4 : access X11_X_h.KeySym;
      arg5 : int) return int;  -- /usr/include/X11/Xlib.h:2063
   pragma Import (C, XChangeKeyboardMapping, "XChangeKeyboardMapping");

   function XChangePointerControl
     (arg1 : System.Address;
      arg2 : int;
      arg3 : int;
      arg4 : int;
      arg5 : int;
      arg6 : int) return int;  -- /usr/include/X11/Xlib.h:2071
   pragma Import (C, XChangePointerControl, "XChangePointerControl");

   function XChangeProperty
     (arg1 : System.Address;
      arg2 : X11_X_h.Window;
      arg3 : X11_X_h.Atom;
      arg4 : X11_X_h.Atom;
      arg5 : int;
      arg6 : int;
      arg7 : access unsigned_char;
      arg8 : int) return int;  -- /usr/include/X11/Xlib.h:2080
   pragma Import (C, XChangeProperty, "XChangeProperty");

   function XChangeSaveSet
     (arg1 : System.Address;
      arg2 : X11_X_h.Window;
      arg3 : int) return int;  -- /usr/include/X11/Xlib.h:2091
   pragma Import (C, XChangeSaveSet, "XChangeSaveSet");

   function XChangeWindowAttributes
     (arg1 : System.Address;
      arg2 : X11_X_h.Window;
      arg3 : unsigned_long;
      arg4 : access XSetWindowAttributes) return int;  -- /usr/include/X11/Xlib.h:2097
   pragma Import (C, XChangeWindowAttributes, "XChangeWindowAttributes");

   function XCheckIfEvent
     (arg1 : System.Address;
      arg2 : access XEvent;
      arg3 : access function
        (arg1 : System.Address;
         arg2 : access XEvent;
         arg3 : XPointer) return int;
      arg4 : XPointer) return int;  -- /usr/include/X11/Xlib.h:2104
   pragma Import (C, XCheckIfEvent, "XCheckIfEvent");

   function XCheckMaskEvent
     (arg1 : System.Address;
      arg2 : long;
      arg3 : access XEvent) return int;  -- /usr/include/X11/Xlib.h:2115
   pragma Import (C, XCheckMaskEvent, "XCheckMaskEvent");

   function XCheckTypedEvent
     (arg1 : System.Address;
      arg2 : int;
      arg3 : access XEvent) return int;  -- /usr/include/X11/Xlib.h:2121
   pragma Import (C, XCheckTypedEvent, "XCheckTypedEvent");

   function XCheckTypedWindowEvent
     (arg1 : System.Address;
      arg2 : X11_X_h.Window;
      arg3 : int;
      arg4 : access XEvent) return int;  -- /usr/include/X11/Xlib.h:2127
   pragma Import (C, XCheckTypedWindowEvent, "XCheckTypedWindowEvent");

   function XCheckWindowEvent
     (arg1 : System.Address;
      arg2 : X11_X_h.Window;
      arg3 : long;
      arg4 : access XEvent) return int;  -- /usr/include/X11/Xlib.h:2134
   pragma Import (C, XCheckWindowEvent, "XCheckWindowEvent");

   function XCirculateSubwindows
     (arg1 : System.Address;
      arg2 : X11_X_h.Window;
      arg3 : int) return int;  -- /usr/include/X11/Xlib.h:2141
   pragma Import (C, XCirculateSubwindows, "XCirculateSubwindows");

   function XCirculateSubwindowsDown (arg1 : System.Address; arg2 : X11_X_h.Window) return int;  -- /usr/include/X11/Xlib.h:2147
   pragma Import (C, XCirculateSubwindowsDown, "XCirculateSubwindowsDown");

   function XCirculateSubwindowsUp (arg1 : System.Address; arg2 : X11_X_h.Window) return int;  -- /usr/include/X11/Xlib.h:2152
   pragma Import (C, XCirculateSubwindowsUp, "XCirculateSubwindowsUp");

   function XClearArea
     (arg1 : System.Address;
      arg2 : X11_X_h.Window;
      arg3 : int;
      arg4 : int;
      arg5 : unsigned;
      arg6 : unsigned;
      arg7 : int) return int;  -- /usr/include/X11/Xlib.h:2157
   pragma Import (C, XClearArea, "XClearArea");

   function XClearWindow (arg1 : System.Address; arg2 : X11_X_h.Window) return int;  -- /usr/include/X11/Xlib.h:2167
   pragma Import (C, XClearWindow, "XClearWindow");

   function XCloseDisplay (arg1 : System.Address) return int;  -- /usr/include/X11/Xlib.h:2172
   pragma Import (C, XCloseDisplay, "XCloseDisplay");

   function XConfigureWindow
     (arg1 : System.Address;
      arg2 : X11_X_h.Window;
      arg3 : unsigned;
      arg4 : access XWindowChanges) return int;  -- /usr/include/X11/Xlib.h:2176
   pragma Import (C, XConfigureWindow, "XConfigureWindow");

   function XConnectionNumber (arg1 : System.Address) return int;  -- /usr/include/X11/Xlib.h:2183
   pragma Import (C, XConnectionNumber, "XConnectionNumber");

   function XConvertSelection
     (arg1 : System.Address;
      arg2 : X11_X_h.Atom;
      arg3 : X11_X_h.Atom;
      arg4 : X11_X_h.Atom;
      arg5 : X11_X_h.Window;
      arg6 : X11_X_h.Time) return int;  -- /usr/include/X11/Xlib.h:2187
   pragma Import (C, XConvertSelection, "XConvertSelection");

   function XCopyArea
     (arg1 : System.Address;
      arg2 : X11_X_h.Drawable;
      arg3 : X11_X_h.Drawable;
      arg4 : GC;
      arg5 : int;
      arg6 : int;
      arg7 : unsigned;
      arg8 : unsigned;
      arg9 : int;
      arg10 : int) return int;  -- /usr/include/X11/Xlib.h:2196
   pragma Import (C, XCopyArea, "XCopyArea");

   function XCopyGC
     (arg1 : System.Address;
      arg2 : GC;
      arg3 : unsigned_long;
      arg4 : GC) return int;  -- /usr/include/X11/Xlib.h:2209
   pragma Import (C, XCopyGC, "XCopyGC");

   function XCopyPlane
     (arg1 : System.Address;
      arg2 : X11_X_h.Drawable;
      arg3 : X11_X_h.Drawable;
      arg4 : GC;
      arg5 : int;
      arg6 : int;
      arg7 : unsigned;
      arg8 : unsigned;
      arg9 : int;
      arg10 : int;
      arg11 : unsigned_long) return int;  -- /usr/include/X11/Xlib.h:2216
   pragma Import (C, XCopyPlane, "XCopyPlane");

   function XDefaultDepth (arg1 : System.Address; arg2 : int) return int;  -- /usr/include/X11/Xlib.h:2230
   pragma Import (C, XDefaultDepth, "XDefaultDepth");

   function XDefaultDepthOfScreen (arg1 : access Screen) return int;  -- /usr/include/X11/Xlib.h:2235
   pragma Import (C, XDefaultDepthOfScreen, "XDefaultDepthOfScreen");

   function XDefaultScreen (arg1 : System.Address) return int;  -- /usr/include/X11/Xlib.h:2239
   pragma Import (C, XDefaultScreen, "XDefaultScreen");

   function XDefineCursor
     (arg1 : System.Address;
      arg2 : X11_X_h.Window;
      arg3 : X11_X_h.Cursor) return int;  -- /usr/include/X11/Xlib.h:2243
   pragma Import (C, XDefineCursor, "XDefineCursor");

   function XDeleteProperty
     (arg1 : System.Address;
      arg2 : X11_X_h.Window;
      arg3 : X11_X_h.Atom) return int;  -- /usr/include/X11/Xlib.h:2249
   pragma Import (C, XDeleteProperty, "XDeleteProperty");

   function XDestroyWindow (arg1 : System.Address; arg2 : X11_X_h.Window) return int;  -- /usr/include/X11/Xlib.h:2255
   pragma Import (C, XDestroyWindow, "XDestroyWindow");

   function XDestroySubwindows (arg1 : System.Address; arg2 : X11_X_h.Window) return int;  -- /usr/include/X11/Xlib.h:2260
   pragma Import (C, XDestroySubwindows, "XDestroySubwindows");

   function XDoesBackingStore (arg1 : access Screen) return int;  -- /usr/include/X11/Xlib.h:2265
   pragma Import (C, XDoesBackingStore, "XDoesBackingStore");

   function XDoesSaveUnders (arg1 : access Screen) return int;  -- /usr/include/X11/Xlib.h:2269
   pragma Import (C, XDoesSaveUnders, "XDoesSaveUnders");

   function XDisableAccessControl (arg1 : System.Address) return int;  -- /usr/include/X11/Xlib.h:2273
   pragma Import (C, XDisableAccessControl, "XDisableAccessControl");

   function XDisplayCells (arg1 : System.Address; arg2 : int) return int;  -- /usr/include/X11/Xlib.h:2278
   pragma Import (C, XDisplayCells, "XDisplayCells");

   function XDisplayHeight (arg1 : System.Address; arg2 : int) return int;  -- /usr/include/X11/Xlib.h:2283
   pragma Import (C, XDisplayHeight, "XDisplayHeight");

   function XDisplayHeightMM (arg1 : System.Address; arg2 : int) return int;  -- /usr/include/X11/Xlib.h:2288
   pragma Import (C, XDisplayHeightMM, "XDisplayHeightMM");

   function XDisplayKeycodes
     (arg1 : System.Address;
      arg2 : access int;
      arg3 : access int) return int;  -- /usr/include/X11/Xlib.h:2293
   pragma Import (C, XDisplayKeycodes, "XDisplayKeycodes");

   function XDisplayPlanes (arg1 : System.Address; arg2 : int) return int;  -- /usr/include/X11/Xlib.h:2299
   pragma Import (C, XDisplayPlanes, "XDisplayPlanes");

   function XDisplayWidth (arg1 : System.Address; arg2 : int) return int;  -- /usr/include/X11/Xlib.h:2304
   pragma Import (C, XDisplayWidth, "XDisplayWidth");

   function XDisplayWidthMM (arg1 : System.Address; arg2 : int) return int;  -- /usr/include/X11/Xlib.h:2309
   pragma Import (C, XDisplayWidthMM, "XDisplayWidthMM");

   function XDrawArc
     (arg1 : System.Address;
      arg2 : X11_X_h.Drawable;
      arg3 : GC;
      arg4 : int;
      arg5 : int;
      arg6 : unsigned;
      arg7 : unsigned;
      arg8 : int;
      arg9 : int) return int;  -- /usr/include/X11/Xlib.h:2314
   pragma Import (C, XDrawArc, "XDrawArc");

   function XDrawArcs
     (arg1 : System.Address;
      arg2 : X11_X_h.Drawable;
      arg3 : GC;
      arg4 : access XArc;
      arg5 : int) return int;  -- /usr/include/X11/Xlib.h:2326
   pragma Import (C, XDrawArcs, "XDrawArcs");

   function XDrawImageString
     (arg1 : System.Address;
      arg2 : X11_X_h.Drawable;
      arg3 : GC;
      arg4 : int;
      arg5 : int;
      arg6 : Interfaces.C.Strings.chars_ptr;
      arg7 : int) return int;  -- /usr/include/X11/Xlib.h:2334
   pragma Import (C, XDrawImageString, "XDrawImageString");

   function XDrawImageString16
     (arg1 : System.Address;
      arg2 : X11_X_h.Drawable;
      arg3 : GC;
      arg4 : int;
      arg5 : int;
      arg6 : access constant XChar2b;
      arg7 : int) return int;  -- /usr/include/X11/Xlib.h:2344
   pragma Import (C, XDrawImageString16, "XDrawImageString16");

   function XDrawLine
     (arg1 : System.Address;
      arg2 : X11_X_h.Drawable;
      arg3 : GC;
      arg4 : int;
      arg5 : int;
      arg6 : int;
      arg7 : int) return int;  -- /usr/include/X11/Xlib.h:2354
   pragma Import (C, XDrawLine, "XDrawLine");

   function XDrawLines
     (arg1 : System.Address;
      arg2 : X11_X_h.Drawable;
      arg3 : GC;
      arg4 : access XPoint;
      arg5 : int;
      arg6 : int) return int;  -- /usr/include/X11/Xlib.h:2364
   pragma Import (C, XDrawLines, "XDrawLines");

   function XDrawPoint
     (arg1 : System.Address;
      arg2 : X11_X_h.Drawable;
      arg3 : GC;
      arg4 : int;
      arg5 : int) return int;  -- /usr/include/X11/Xlib.h:2373
   pragma Import (C, XDrawPoint, "XDrawPoint");

   function XDrawPoints
     (arg1 : System.Address;
      arg2 : X11_X_h.Drawable;
      arg3 : GC;
      arg4 : access XPoint;
      arg5 : int;
      arg6 : int) return int;  -- /usr/include/X11/Xlib.h:2381
   pragma Import (C, XDrawPoints, "XDrawPoints");

   function XDrawRectangle
     (arg1 : System.Address;
      arg2 : X11_X_h.Drawable;
      arg3 : GC;
      arg4 : int;
      arg5 : int;
      arg6 : unsigned;
      arg7 : unsigned) return int;  -- /usr/include/X11/Xlib.h:2390
   pragma Import (C, XDrawRectangle, "XDrawRectangle");

   function XDrawRectangles
     (arg1 : System.Address;
      arg2 : X11_X_h.Drawable;
      arg3 : GC;
      arg4 : access XRectangle;
      arg5 : int) return int;  -- /usr/include/X11/Xlib.h:2400
   pragma Import (C, XDrawRectangles, "XDrawRectangles");

   function XDrawSegments
     (arg1 : System.Address;
      arg2 : X11_X_h.Drawable;
      arg3 : GC;
      arg4 : access XSegment;
      arg5 : int) return int;  -- /usr/include/X11/Xlib.h:2408
   pragma Import (C, XDrawSegments, "XDrawSegments");

   function XDrawString
     (arg1 : System.Address;
      arg2 : X11_X_h.Drawable;
      arg3 : GC;
      arg4 : int;
      arg5 : int;
      arg6 : Interfaces.C.Strings.chars_ptr;
      arg7 : int) return int;  -- /usr/include/X11/Xlib.h:2416
   pragma Import (C, XDrawString, "XDrawString");

   function XDrawString16
     (arg1 : System.Address;
      arg2 : X11_X_h.Drawable;
      arg3 : GC;
      arg4 : int;
      arg5 : int;
      arg6 : access constant XChar2b;
      arg7 : int) return int;  -- /usr/include/X11/Xlib.h:2426
   pragma Import (C, XDrawString16, "XDrawString16");

   function XDrawText
     (arg1 : System.Address;
      arg2 : X11_X_h.Drawable;
      arg3 : GC;
      arg4 : int;
      arg5 : int;
      arg6 : access XTextItem;
      arg7 : int) return int;  -- /usr/include/X11/Xlib.h:2436
   pragma Import (C, XDrawText, "XDrawText");

   function XDrawText16
     (arg1 : System.Address;
      arg2 : X11_X_h.Drawable;
      arg3 : GC;
      arg4 : int;
      arg5 : int;
      arg6 : access XTextItem16;
      arg7 : int) return int;  -- /usr/include/X11/Xlib.h:2446
   pragma Import (C, XDrawText16, "XDrawText16");

   function XEnableAccessControl (arg1 : System.Address) return int;  -- /usr/include/X11/Xlib.h:2456
   pragma Import (C, XEnableAccessControl, "XEnableAccessControl");

   function XEventsQueued (arg1 : System.Address; arg2 : int) return int;  -- /usr/include/X11/Xlib.h:2460
   pragma Import (C, XEventsQueued, "XEventsQueued");

   function XFetchName
     (arg1 : System.Address;
      arg2 : X11_X_h.Window;
      arg3 : System.Address) return int;  -- /usr/include/X11/Xlib.h:2465
   pragma Import (C, XFetchName, "XFetchName");

   function XFillArc
     (arg1 : System.Address;
      arg2 : X11_X_h.Drawable;
      arg3 : GC;
      arg4 : int;
      arg5 : int;
      arg6 : unsigned;
      arg7 : unsigned;
      arg8 : int;
      arg9 : int) return int;  -- /usr/include/X11/Xlib.h:2471
   pragma Import (C, XFillArc, "XFillArc");

   function XFillArcs
     (arg1 : System.Address;
      arg2 : X11_X_h.Drawable;
      arg3 : GC;
      arg4 : access XArc;
      arg5 : int) return int;  -- /usr/include/X11/Xlib.h:2483
   pragma Import (C, XFillArcs, "XFillArcs");

   function XFillPolygon
     (arg1 : System.Address;
      arg2 : X11_X_h.Drawable;
      arg3 : GC;
      arg4 : access XPoint;
      arg5 : int;
      arg6 : int;
      arg7 : int) return int;  -- /usr/include/X11/Xlib.h:2491
   pragma Import (C, XFillPolygon, "XFillPolygon");

   function XFillRectangle
     (arg1 : System.Address;
      arg2 : X11_X_h.Drawable;
      arg3 : GC;
      arg4 : int;
      arg5 : int;
      arg6 : unsigned;
      arg7 : unsigned) return int;  -- /usr/include/X11/Xlib.h:2501
   pragma Import (C, XFillRectangle, "XFillRectangle");

   function XFillRectangles
     (arg1 : System.Address;
      arg2 : X11_X_h.Drawable;
      arg3 : GC;
      arg4 : access XRectangle;
      arg5 : int) return int;  -- /usr/include/X11/Xlib.h:2511
   pragma Import (C, XFillRectangles, "XFillRectangles");

   function XFlush (arg1 : System.Address) return int;  -- /usr/include/X11/Xlib.h:2519
   pragma Import (C, XFlush, "XFlush");

   function XForceScreenSaver (arg1 : System.Address; arg2 : int) return int;  -- /usr/include/X11/Xlib.h:2523
   pragma Import (C, XForceScreenSaver, "XForceScreenSaver");

   function XFree (arg1 : System.Address) return int;  -- /usr/include/X11/Xlib.h:2528
   pragma Import (C, XFree, "XFree");

   function XFreeColormap (arg1 : System.Address; arg2 : X11_X_h.Colormap) return int;  -- /usr/include/X11/Xlib.h:2532
   pragma Import (C, XFreeColormap, "XFreeColormap");

   function XFreeColors
     (arg1 : System.Address;
      arg2 : X11_X_h.Colormap;
      arg3 : access unsigned_long;
      arg4 : int;
      arg5 : unsigned_long) return int;  -- /usr/include/X11/Xlib.h:2537
   pragma Import (C, XFreeColors, "XFreeColors");

   function XFreeCursor (arg1 : System.Address; arg2 : X11_X_h.Cursor) return int;  -- /usr/include/X11/Xlib.h:2545
   pragma Import (C, XFreeCursor, "XFreeCursor");

   function XFreeExtensionList (arg1 : System.Address) return int;  -- /usr/include/X11/Xlib.h:2550
   pragma Import (C, XFreeExtensionList, "XFreeExtensionList");

   function XFreeFont (arg1 : System.Address; arg2 : access XFontStruct) return int;  -- /usr/include/X11/Xlib.h:2554
   pragma Import (C, XFreeFont, "XFreeFont");

   function XFreeFontInfo
     (arg1 : System.Address;
      arg2 : access XFontStruct;
      arg3 : int) return int;  -- /usr/include/X11/Xlib.h:2559
   pragma Import (C, XFreeFontInfo, "XFreeFontInfo");

   function XFreeFontNames (arg1 : System.Address) return int;  -- /usr/include/X11/Xlib.h:2565
   pragma Import (C, XFreeFontNames, "XFreeFontNames");

   function XFreeFontPath (arg1 : System.Address) return int;  -- /usr/include/X11/Xlib.h:2569
   pragma Import (C, XFreeFontPath, "XFreeFontPath");

   function XFreeGC (arg1 : System.Address; arg2 : GC) return int;  -- /usr/include/X11/Xlib.h:2573
   pragma Import (C, XFreeGC, "XFreeGC");

   function XFreeModifiermap (arg1 : access XModifierKeymap) return int;  -- /usr/include/X11/Xlib.h:2578
   pragma Import (C, XFreeModifiermap, "XFreeModifiermap");

   function XFreePixmap (arg1 : System.Address; arg2 : X11_X_h.Pixmap) return int;  -- /usr/include/X11/Xlib.h:2582
   pragma Import (C, XFreePixmap, "XFreePixmap");

   function XGeometry
     (arg1 : System.Address;
      arg2 : int;
      arg3 : Interfaces.C.Strings.chars_ptr;
      arg4 : Interfaces.C.Strings.chars_ptr;
      arg5 : unsigned;
      arg6 : unsigned;
      arg7 : unsigned;
      arg8 : int;
      arg9 : int;
      arg10 : access int;
      arg11 : access int;
      arg12 : access int;
      arg13 : access int) return int;  -- /usr/include/X11/Xlib.h:2587
   pragma Import (C, XGeometry, "XGeometry");

   function XGetErrorDatabaseText
     (arg1 : System.Address;
      arg2 : Interfaces.C.Strings.chars_ptr;
      arg3 : Interfaces.C.Strings.chars_ptr;
      arg4 : Interfaces.C.Strings.chars_ptr;
      arg5 : Interfaces.C.Strings.chars_ptr;
      arg6 : int) return int;  -- /usr/include/X11/Xlib.h:2603
   pragma Import (C, XGetErrorDatabaseText, "XGetErrorDatabaseText");

   function XGetErrorText
     (arg1 : System.Address;
      arg2 : int;
      arg3 : Interfaces.C.Strings.chars_ptr;
      arg4 : int) return int;  -- /usr/include/X11/Xlib.h:2612
   pragma Import (C, XGetErrorText, "XGetErrorText");

   function XGetFontProperty
     (arg1 : access XFontStruct;
      arg2 : X11_X_h.Atom;
      arg3 : access unsigned_long) return int;  -- /usr/include/X11/Xlib.h:2619
   pragma Import (C, XGetFontProperty, "XGetFontProperty");

   function XGetGCValues
     (arg1 : System.Address;
      arg2 : GC;
      arg3 : unsigned_long;
      arg4 : access XGCValues) return int;  -- /usr/include/X11/Xlib.h:2625
   pragma Import (C, XGetGCValues, "XGetGCValues");

   function XGetGeometry
     (arg1 : System.Address;
      arg2 : X11_X_h.Drawable;
      arg3 : access X11_X_h.Window;
      arg4 : access int;
      arg5 : access int;
      arg6 : access unsigned;
      arg7 : access unsigned;
      arg8 : access unsigned;
      arg9 : access unsigned) return int;  -- /usr/include/X11/Xlib.h:2632
   pragma Import (C, XGetGeometry, "XGetGeometry");

   function XGetIconName
     (arg1 : System.Address;
      arg2 : X11_X_h.Window;
      arg3 : System.Address) return int;  -- /usr/include/X11/Xlib.h:2644
   pragma Import (C, XGetIconName, "XGetIconName");

   function XGetInputFocus
     (arg1 : System.Address;
      arg2 : access X11_X_h.Window;
      arg3 : access int) return int;  -- /usr/include/X11/Xlib.h:2650
   pragma Import (C, XGetInputFocus, "XGetInputFocus");

   function XGetKeyboardControl (arg1 : System.Address; arg2 : access XKeyboardState) return int;  -- /usr/include/X11/Xlib.h:2656
   pragma Import (C, XGetKeyboardControl, "XGetKeyboardControl");

   function XGetPointerControl
     (arg1 : System.Address;
      arg2 : access int;
      arg3 : access int;
      arg4 : access int) return int;  -- /usr/include/X11/Xlib.h:2661
   pragma Import (C, XGetPointerControl, "XGetPointerControl");

   function XGetPointerMapping
     (arg1 : System.Address;
      arg2 : access unsigned_char;
      arg3 : int) return int;  -- /usr/include/X11/Xlib.h:2668
   pragma Import (C, XGetPointerMapping, "XGetPointerMapping");

   function XGetScreenSaver
     (arg1 : System.Address;
      arg2 : access int;
      arg3 : access int;
      arg4 : access int;
      arg5 : access int) return int;  -- /usr/include/X11/Xlib.h:2674
   pragma Import (C, XGetScreenSaver, "XGetScreenSaver");

   function XGetTransientForHint
     (arg1 : System.Address;
      arg2 : X11_X_h.Window;
      arg3 : access X11_X_h.Window) return int;  -- /usr/include/X11/Xlib.h:2682
   pragma Import (C, XGetTransientForHint, "XGetTransientForHint");

   function XGetWindowProperty
     (arg1 : System.Address;
      arg2 : X11_X_h.Window;
      arg3 : X11_X_h.Atom;
      arg4 : long;
      arg5 : long;
      arg6 : int;
      arg7 : X11_X_h.Atom;
      arg8 : access X11_X_h.Atom;
      arg9 : access int;
      arg10 : access unsigned_long;
      arg11 : access unsigned_long;
      arg12 : System.Address) return int;  -- /usr/include/X11/Xlib.h:2688
   pragma Import (C, XGetWindowProperty, "XGetWindowProperty");

   function XGetWindowAttributes
     (arg1 : System.Address;
      arg2 : X11_X_h.Window;
      arg3 : access XWindowAttributes) return int;  -- /usr/include/X11/Xlib.h:2703
   pragma Import (C, XGetWindowAttributes, "XGetWindowAttributes");

   function XGrabButton
     (arg1 : System.Address;
      arg2 : unsigned;
      arg3 : unsigned;
      arg4 : X11_X_h.Window;
      arg5 : int;
      arg6 : unsigned;
      arg7 : int;
      arg8 : int;
      arg9 : X11_X_h.Window;
      arg10 : X11_X_h.Cursor) return int;  -- /usr/include/X11/Xlib.h:2709
   pragma Import (C, XGrabButton, "XGrabButton");

   function XGrabKey
     (arg1 : System.Address;
      arg2 : int;
      arg3 : unsigned;
      arg4 : X11_X_h.Window;
      arg5 : int;
      arg6 : int;
      arg7 : int) return int;  -- /usr/include/X11/Xlib.h:2722
   pragma Import (C, XGrabKey, "XGrabKey");

   function XGrabKeyboard
     (arg1 : System.Address;
      arg2 : X11_X_h.Window;
      arg3 : int;
      arg4 : int;
      arg5 : int;
      arg6 : X11_X_h.Time) return int;  -- /usr/include/X11/Xlib.h:2732
   pragma Import (C, XGrabKeyboard, "XGrabKeyboard");

   function XGrabPointer
     (arg1 : System.Address;
      arg2 : X11_X_h.Window;
      arg3 : int;
      arg4 : unsigned;
      arg5 : int;
      arg6 : int;
      arg7 : X11_X_h.Window;
      arg8 : X11_X_h.Cursor;
      arg9 : X11_X_h.Time) return int;  -- /usr/include/X11/Xlib.h:2741
   pragma Import (C, XGrabPointer, "XGrabPointer");

   function XGrabServer (arg1 : System.Address) return int;  -- /usr/include/X11/Xlib.h:2753
   pragma Import (C, XGrabServer, "XGrabServer");

   function XHeightMMOfScreen (arg1 : access Screen) return int;  -- /usr/include/X11/Xlib.h:2757
   pragma Import (C, XHeightMMOfScreen, "XHeightMMOfScreen");

   function XHeightOfScreen (arg1 : access Screen) return int;  -- /usr/include/X11/Xlib.h:2761
   pragma Import (C, XHeightOfScreen, "XHeightOfScreen");

   function XIfEvent
     (arg1 : System.Address;
      arg2 : access XEvent;
      arg3 : access function
        (arg1 : System.Address;
         arg2 : access XEvent;
         arg3 : XPointer) return int;
      arg4 : XPointer) return int;  -- /usr/include/X11/Xlib.h:2765
   pragma Import (C, XIfEvent, "XIfEvent");

   function XImageByteOrder (arg1 : System.Address) return int;  -- /usr/include/X11/Xlib.h:2776
   pragma Import (C, XImageByteOrder, "XImageByteOrder");

   function XInstallColormap (arg1 : System.Address; arg2 : X11_X_h.Colormap) return int;  -- /usr/include/X11/Xlib.h:2780
   pragma Import (C, XInstallColormap, "XInstallColormap");

   function XKeysymToKeycode (arg1 : System.Address; arg2 : X11_X_h.KeySym) return X11_X_h.KeyCode;  -- /usr/include/X11/Xlib.h:2785
   pragma Import (C, XKeysymToKeycode, "XKeysymToKeycode");

   function XKillClient (arg1 : System.Address; arg2 : X11_X_h.XID) return int;  -- /usr/include/X11/Xlib.h:2790
   pragma Import (C, XKillClient, "XKillClient");

   function XLookupColor
     (arg1 : System.Address;
      arg2 : X11_X_h.Colormap;
      arg3 : Interfaces.C.Strings.chars_ptr;
      arg4 : access XColor;
      arg5 : access XColor) return int;  -- /usr/include/X11/Xlib.h:2795
   pragma Import (C, XLookupColor, "XLookupColor");

   function XLowerWindow (arg1 : System.Address; arg2 : X11_X_h.Window) return int;  -- /usr/include/X11/Xlib.h:2803
   pragma Import (C, XLowerWindow, "XLowerWindow");

   function XMapRaised (arg1 : System.Address; arg2 : X11_X_h.Window) return int;  -- /usr/include/X11/Xlib.h:2808
   pragma Import (C, XMapRaised, "XMapRaised");

   function XMapSubwindows (arg1 : System.Address; arg2 : X11_X_h.Window) return int;  -- /usr/include/X11/Xlib.h:2813
   pragma Import (C, XMapSubwindows, "XMapSubwindows");

   function XMapWindow (arg1 : System.Address; arg2 : X11_X_h.Window) return int;  -- /usr/include/X11/Xlib.h:2818
   pragma Import (C, XMapWindow, "XMapWindow");

   function XMaskEvent
     (arg1 : System.Address;
      arg2 : long;
      arg3 : access XEvent) return int;  -- /usr/include/X11/Xlib.h:2823
   pragma Import (C, XMaskEvent, "XMaskEvent");

   function XMaxCmapsOfScreen (arg1 : access Screen) return int;  -- /usr/include/X11/Xlib.h:2829
   pragma Import (C, XMaxCmapsOfScreen, "XMaxCmapsOfScreen");

   function XMinCmapsOfScreen (arg1 : access Screen) return int;  -- /usr/include/X11/Xlib.h:2833
   pragma Import (C, XMinCmapsOfScreen, "XMinCmapsOfScreen");

   function XMoveResizeWindow
     (arg1 : System.Address;
      arg2 : X11_X_h.Window;
      arg3 : int;
      arg4 : int;
      arg5 : unsigned;
      arg6 : unsigned) return int;  -- /usr/include/X11/Xlib.h:2837
   pragma Import (C, XMoveResizeWindow, "XMoveResizeWindow");

   function XMoveWindow
     (arg1 : System.Address;
      arg2 : X11_X_h.Window;
      arg3 : int;
      arg4 : int) return int;  -- /usr/include/X11/Xlib.h:2846
   pragma Import (C, XMoveWindow, "XMoveWindow");

   function XNextEvent (arg1 : System.Address; arg2 : access XEvent) return int;  -- /usr/include/X11/Xlib.h:2853
   pragma Import (C, XNextEvent, "XNextEvent");

   function XNoOp (arg1 : System.Address) return int;  -- /usr/include/X11/Xlib.h:2858
   pragma Import (C, XNoOp, "XNoOp");

   function XParseColor
     (arg1 : System.Address;
      arg2 : X11_X_h.Colormap;
      arg3 : Interfaces.C.Strings.chars_ptr;
      arg4 : access XColor) return int;  -- /usr/include/X11/Xlib.h:2862
   pragma Import (C, XParseColor, "XParseColor");

   function XParseGeometry
     (arg1 : Interfaces.C.Strings.chars_ptr;
      arg2 : access int;
      arg3 : access int;
      arg4 : access unsigned;
      arg5 : access unsigned) return int;  -- /usr/include/X11/Xlib.h:2869
   pragma Import (C, XParseGeometry, "XParseGeometry");

   function XPeekEvent (arg1 : System.Address; arg2 : access XEvent) return int;  -- /usr/include/X11/Xlib.h:2877
   pragma Import (C, XPeekEvent, "XPeekEvent");

   function XPeekIfEvent
     (arg1 : System.Address;
      arg2 : access XEvent;
      arg3 : access function
        (arg1 : System.Address;
         arg2 : access XEvent;
         arg3 : XPointer) return int;
      arg4 : XPointer) return int;  -- /usr/include/X11/Xlib.h:2882
   pragma Import (C, XPeekIfEvent, "XPeekIfEvent");

   function XPending (arg1 : System.Address) return int;  -- /usr/include/X11/Xlib.h:2893
   pragma Import (C, XPending, "XPending");

   function XPlanesOfScreen (arg1 : access Screen) return int;  -- /usr/include/X11/Xlib.h:2897
   pragma Import (C, XPlanesOfScreen, "XPlanesOfScreen");

   function XProtocolRevision (arg1 : System.Address) return int;  -- /usr/include/X11/Xlib.h:2901
   pragma Import (C, XProtocolRevision, "XProtocolRevision");

   function XProtocolVersion (arg1 : System.Address) return int;  -- /usr/include/X11/Xlib.h:2905
   pragma Import (C, XProtocolVersion, "XProtocolVersion");

   function XPutBackEvent (arg1 : System.Address; arg2 : access XEvent) return int;  -- /usr/include/X11/Xlib.h:2910
   pragma Import (C, XPutBackEvent, "XPutBackEvent");

   function XPutImage
     (arg1 : System.Address;
      arg2 : X11_X_h.Drawable;
      arg3 : GC;
      arg4 : access XImage;
      arg5 : int;
      arg6 : int;
      arg7 : int;
      arg8 : int;
      arg9 : unsigned;
      arg10 : unsigned) return int;  -- /usr/include/X11/Xlib.h:2915
   pragma Import (C, XPutImage, "XPutImage");

   function XQLength (arg1 : System.Address) return int;  -- /usr/include/X11/Xlib.h:2928
   pragma Import (C, XQLength, "XQLength");

   function XQueryBestCursor
     (arg1 : System.Address;
      arg2 : X11_X_h.Drawable;
      arg3 : unsigned;
      arg4 : unsigned;
      arg5 : access unsigned;
      arg6 : access unsigned) return int;  -- /usr/include/X11/Xlib.h:2932
   pragma Import (C, XQueryBestCursor, "XQueryBestCursor");

   function XQueryBestSize
     (arg1 : System.Address;
      arg2 : int;
      arg3 : X11_X_h.Drawable;
      arg4 : unsigned;
      arg5 : unsigned;
      arg6 : access unsigned;
      arg7 : access unsigned) return int;  -- /usr/include/X11/Xlib.h:2941
   pragma Import (C, XQueryBestSize, "XQueryBestSize");

   function XQueryBestStipple
     (arg1 : System.Address;
      arg2 : X11_X_h.Drawable;
      arg3 : unsigned;
      arg4 : unsigned;
      arg5 : access unsigned;
      arg6 : access unsigned) return int;  -- /usr/include/X11/Xlib.h:2951
   pragma Import (C, XQueryBestStipple, "XQueryBestStipple");

   function XQueryBestTile
     (arg1 : System.Address;
      arg2 : X11_X_h.Drawable;
      arg3 : unsigned;
      arg4 : unsigned;
      arg5 : access unsigned;
      arg6 : access unsigned) return int;  -- /usr/include/X11/Xlib.h:2960
   pragma Import (C, XQueryBestTile, "XQueryBestTile");

   function XQueryColor
     (arg1 : System.Address;
      arg2 : X11_X_h.Colormap;
      arg3 : access XColor) return int;  -- /usr/include/X11/Xlib.h:2969
   pragma Import (C, XQueryColor, "XQueryColor");

   function XQueryColors
     (arg1 : System.Address;
      arg2 : X11_X_h.Colormap;
      arg3 : access XColor;
      arg4 : int) return int;  -- /usr/include/X11/Xlib.h:2975
   pragma Import (C, XQueryColors, "XQueryColors");

   function XQueryExtension
     (arg1 : System.Address;
      arg2 : Interfaces.C.Strings.chars_ptr;
      arg3 : access int;
      arg4 : access int;
      arg5 : access int) return int;  -- /usr/include/X11/Xlib.h:2982
   pragma Import (C, XQueryExtension, "XQueryExtension");

   function XQueryKeymap (arg1 : System.Address; arg2 : Interfaces.C.Strings.chars_ptr) return int;  -- /usr/include/X11/Xlib.h:2990
   pragma Import (C, XQueryKeymap, "XQueryKeymap");

   function XQueryPointer
     (arg1 : System.Address;
      arg2 : X11_X_h.Window;
      arg3 : access X11_X_h.Window;
      arg4 : access X11_X_h.Window;
      arg5 : access int;
      arg6 : access int;
      arg7 : access int;
      arg8 : access int;
      arg9 : access unsigned) return int;  -- /usr/include/X11/Xlib.h:2995
   pragma Import (C, XQueryPointer, "XQueryPointer");

   function XQueryTextExtents
     (arg1 : System.Address;
      arg2 : X11_X_h.XID;
      arg3 : Interfaces.C.Strings.chars_ptr;
      arg4 : int;
      arg5 : access int;
      arg6 : access int;
      arg7 : access int;
      arg8 : access XCharStruct) return int;  -- /usr/include/X11/Xlib.h:3007
   pragma Import (C, XQueryTextExtents, "XQueryTextExtents");

   function XQueryTextExtents16
     (arg1 : System.Address;
      arg2 : X11_X_h.XID;
      arg3 : access constant XChar2b;
      arg4 : int;
      arg5 : access int;
      arg6 : access int;
      arg7 : access int;
      arg8 : access XCharStruct) return int;  -- /usr/include/X11/Xlib.h:3018
   pragma Import (C, XQueryTextExtents16, "XQueryTextExtents16");

   function XQueryTree
     (arg1 : System.Address;
      arg2 : X11_X_h.Window;
      arg3 : access X11_X_h.Window;
      arg4 : access X11_X_h.Window;
      arg5 : System.Address;
      arg6 : access unsigned) return int;  -- /usr/include/X11/Xlib.h:3029
   pragma Import (C, XQueryTree, "XQueryTree");

   function XRaiseWindow (arg1 : System.Address; arg2 : X11_X_h.Window) return int;  -- /usr/include/X11/Xlib.h:3038
   pragma Import (C, XRaiseWindow, "XRaiseWindow");

   function XReadBitmapFile
     (arg1 : System.Address;
      arg2 : X11_X_h.Drawable;
      arg3 : Interfaces.C.Strings.chars_ptr;
      arg4 : access unsigned;
      arg5 : access unsigned;
      arg6 : access X11_X_h.Pixmap;
      arg7 : access int;
      arg8 : access int) return int;  -- /usr/include/X11/Xlib.h:3043
   pragma Import (C, XReadBitmapFile, "XReadBitmapFile");

   function XReadBitmapFileData
     (arg1 : Interfaces.C.Strings.chars_ptr;
      arg2 : access unsigned;
      arg3 : access unsigned;
      arg4 : System.Address;
      arg5 : access int;
      arg6 : access int) return int;  -- /usr/include/X11/Xlib.h:3054
   pragma Import (C, XReadBitmapFileData, "XReadBitmapFileData");

   function XRebindKeysym
     (arg1 : System.Address;
      arg2 : X11_X_h.KeySym;
      arg3 : access X11_X_h.KeySym;
      arg4 : int;
      arg5 : access unsigned_char;
      arg6 : int) return int;  -- /usr/include/X11/Xlib.h:3063
   pragma Import (C, XRebindKeysym, "XRebindKeysym");

   function XRecolorCursor
     (arg1 : System.Address;
      arg2 : X11_X_h.Cursor;
      arg3 : access XColor;
      arg4 : access XColor) return int;  -- /usr/include/X11/Xlib.h:3072
   pragma Import (C, XRecolorCursor, "XRecolorCursor");

   function XRefreshKeyboardMapping (arg1 : access XMappingEvent) return int;  -- /usr/include/X11/Xlib.h:3079
   pragma Import (C, XRefreshKeyboardMapping, "XRefreshKeyboardMapping");

   function XRemoveFromSaveSet (arg1 : System.Address; arg2 : X11_X_h.Window) return int;  -- /usr/include/X11/Xlib.h:3083
   pragma Import (C, XRemoveFromSaveSet, "XRemoveFromSaveSet");

   function XRemoveHost (arg1 : System.Address; arg2 : access XHostAddress) return int;  -- /usr/include/X11/Xlib.h:3088
   pragma Import (C, XRemoveHost, "XRemoveHost");

   function XRemoveHosts
     (arg1 : System.Address;
      arg2 : access XHostAddress;
      arg3 : int) return int;  -- /usr/include/X11/Xlib.h:3093
   pragma Import (C, XRemoveHosts, "XRemoveHosts");

   function XReparentWindow
     (arg1 : System.Address;
      arg2 : X11_X_h.Window;
      arg3 : X11_X_h.Window;
      arg4 : int;
      arg5 : int) return int;  -- /usr/include/X11/Xlib.h:3099
   pragma Import (C, XReparentWindow, "XReparentWindow");

   function XResetScreenSaver (arg1 : System.Address) return int;  -- /usr/include/X11/Xlib.h:3107
   pragma Import (C, XResetScreenSaver, "XResetScreenSaver");

   function XResizeWindow
     (arg1 : System.Address;
      arg2 : X11_X_h.Window;
      arg3 : unsigned;
      arg4 : unsigned) return int;  -- /usr/include/X11/Xlib.h:3111
   pragma Import (C, XResizeWindow, "XResizeWindow");

   function XRestackWindows
     (arg1 : System.Address;
      arg2 : access X11_X_h.Window;
      arg3 : int) return int;  -- /usr/include/X11/Xlib.h:3118
   pragma Import (C, XRestackWindows, "XRestackWindows");

   function XRotateBuffers (arg1 : System.Address; arg2 : int) return int;  -- /usr/include/X11/Xlib.h:3124
   pragma Import (C, XRotateBuffers, "XRotateBuffers");

   function XRotateWindowProperties
     (arg1 : System.Address;
      arg2 : X11_X_h.Window;
      arg3 : access X11_X_h.Atom;
      arg4 : int;
      arg5 : int) return int;  -- /usr/include/X11/Xlib.h:3129
   pragma Import (C, XRotateWindowProperties, "XRotateWindowProperties");

   function XScreenCount (arg1 : System.Address) return int;  -- /usr/include/X11/Xlib.h:3137
   pragma Import (C, XScreenCount, "XScreenCount");

   function XSelectInput
     (arg1 : System.Address;
      arg2 : X11_X_h.Window;
      arg3 : long) return int;  -- /usr/include/X11/Xlib.h:3141
   pragma Import (C, XSelectInput, "XSelectInput");

   function XSendEvent
     (arg1 : System.Address;
      arg2 : X11_X_h.Window;
      arg3 : int;
      arg4 : long;
      arg5 : access XEvent) return int;  -- /usr/include/X11/Xlib.h:3147
   pragma Import (C, XSendEvent, "XSendEvent");

   function XSetAccessControl (arg1 : System.Address; arg2 : int) return int;  -- /usr/include/X11/Xlib.h:3155
   pragma Import (C, XSetAccessControl, "XSetAccessControl");

   function XSetArcMode
     (arg1 : System.Address;
      arg2 : GC;
      arg3 : int) return int;  -- /usr/include/X11/Xlib.h:3160
   pragma Import (C, XSetArcMode, "XSetArcMode");

   function XSetBackground
     (arg1 : System.Address;
      arg2 : GC;
      arg3 : unsigned_long) return int;  -- /usr/include/X11/Xlib.h:3166
   pragma Import (C, XSetBackground, "XSetBackground");

   function XSetClipMask
     (arg1 : System.Address;
      arg2 : GC;
      arg3 : X11_X_h.Pixmap) return int;  -- /usr/include/X11/Xlib.h:3172
   pragma Import (C, XSetClipMask, "XSetClipMask");

   function XSetClipOrigin
     (arg1 : System.Address;
      arg2 : GC;
      arg3 : int;
      arg4 : int) return int;  -- /usr/include/X11/Xlib.h:3178
   pragma Import (C, XSetClipOrigin, "XSetClipOrigin");

   function XSetClipRectangles
     (arg1 : System.Address;
      arg2 : GC;
      arg3 : int;
      arg4 : int;
      arg5 : access XRectangle;
      arg6 : int;
      arg7 : int) return int;  -- /usr/include/X11/Xlib.h:3185
   pragma Import (C, XSetClipRectangles, "XSetClipRectangles");

   function XSetCloseDownMode (arg1 : System.Address; arg2 : int) return int;  -- /usr/include/X11/Xlib.h:3195
   pragma Import (C, XSetCloseDownMode, "XSetCloseDownMode");

   function XSetCommand
     (arg1 : System.Address;
      arg2 : X11_X_h.Window;
      arg3 : System.Address;
      arg4 : int) return int;  -- /usr/include/X11/Xlib.h:3200
   pragma Import (C, XSetCommand, "XSetCommand");

   function XSetDashes
     (arg1 : System.Address;
      arg2 : GC;
      arg3 : int;
      arg4 : Interfaces.C.Strings.chars_ptr;
      arg5 : int) return int;  -- /usr/include/X11/Xlib.h:3207
   pragma Import (C, XSetDashes, "XSetDashes");

   function XSetFillRule
     (arg1 : System.Address;
      arg2 : GC;
      arg3 : int) return int;  -- /usr/include/X11/Xlib.h:3215
   pragma Import (C, XSetFillRule, "XSetFillRule");

   function XSetFillStyle
     (arg1 : System.Address;
      arg2 : GC;
      arg3 : int) return int;  -- /usr/include/X11/Xlib.h:3221
   pragma Import (C, XSetFillStyle, "XSetFillStyle");

   function XSetFont
     (arg1 : System.Address;
      arg2 : GC;
      arg3 : X11_X_h.Font) return int;  -- /usr/include/X11/Xlib.h:3227
   pragma Import (C, XSetFont, "XSetFont");

   function XSetFontPath
     (arg1 : System.Address;
      arg2 : System.Address;
      arg3 : int) return int;  -- /usr/include/X11/Xlib.h:3233
   pragma Import (C, XSetFontPath, "XSetFontPath");

   function XSetForeground
     (arg1 : System.Address;
      arg2 : GC;
      arg3 : unsigned_long) return int;  -- /usr/include/X11/Xlib.h:3239
   pragma Import (C, XSetForeground, "XSetForeground");

   function XSetFunction
     (arg1 : System.Address;
      arg2 : GC;
      arg3 : int) return int;  -- /usr/include/X11/Xlib.h:3245
   pragma Import (C, XSetFunction, "XSetFunction");

   function XSetGraphicsExposures
     (arg1 : System.Address;
      arg2 : GC;
      arg3 : int) return int;  -- /usr/include/X11/Xlib.h:3251
   pragma Import (C, XSetGraphicsExposures, "XSetGraphicsExposures");

   function XSetIconName
     (arg1 : System.Address;
      arg2 : X11_X_h.Window;
      arg3 : Interfaces.C.Strings.chars_ptr) return int;  -- /usr/include/X11/Xlib.h:3257
   pragma Import (C, XSetIconName, "XSetIconName");

   function XSetInputFocus
     (arg1 : System.Address;
      arg2 : X11_X_h.Window;
      arg3 : int;
      arg4 : X11_X_h.Time) return int;  -- /usr/include/X11/Xlib.h:3263
   pragma Import (C, XSetInputFocus, "XSetInputFocus");

   function XSetLineAttributes
     (arg1 : System.Address;
      arg2 : GC;
      arg3 : unsigned;
      arg4 : int;
      arg5 : int;
      arg6 : int) return int;  -- /usr/include/X11/Xlib.h:3270
   pragma Import (C, XSetLineAttributes, "XSetLineAttributes");

   function XSetModifierMapping (arg1 : System.Address; arg2 : access XModifierKeymap) return int;  -- /usr/include/X11/Xlib.h:3279
   pragma Import (C, XSetModifierMapping, "XSetModifierMapping");

   function XSetPlaneMask
     (arg1 : System.Address;
      arg2 : GC;
      arg3 : unsigned_long) return int;  -- /usr/include/X11/Xlib.h:3284
   pragma Import (C, XSetPlaneMask, "XSetPlaneMask");

   function XSetPointerMapping
     (arg1 : System.Address;
      arg2 : access unsigned_char;
      arg3 : int) return int;  -- /usr/include/X11/Xlib.h:3290
   pragma Import (C, XSetPointerMapping, "XSetPointerMapping");

   function XSetScreenSaver
     (arg1 : System.Address;
      arg2 : int;
      arg3 : int;
      arg4 : int;
      arg5 : int) return int;  -- /usr/include/X11/Xlib.h:3296
   pragma Import (C, XSetScreenSaver, "XSetScreenSaver");

   function XSetSelectionOwner
     (arg1 : System.Address;
      arg2 : X11_X_h.Atom;
      arg3 : X11_X_h.Window;
      arg4 : X11_X_h.Time) return int;  -- /usr/include/X11/Xlib.h:3304
   pragma Import (C, XSetSelectionOwner, "XSetSelectionOwner");

   function XSetState
     (arg1 : System.Address;
      arg2 : GC;
      arg3 : unsigned_long;
      arg4 : unsigned_long;
      arg5 : int;
      arg6 : unsigned_long) return int;  -- /usr/include/X11/Xlib.h:3311
   pragma Import (C, XSetState, "XSetState");

   function XSetStipple
     (arg1 : System.Address;
      arg2 : GC;
      arg3 : X11_X_h.Pixmap) return int;  -- /usr/include/X11/Xlib.h:3320
   pragma Import (C, XSetStipple, "XSetStipple");

   function XSetSubwindowMode
     (arg1 : System.Address;
      arg2 : GC;
      arg3 : int) return int;  -- /usr/include/X11/Xlib.h:3326
   pragma Import (C, XSetSubwindowMode, "XSetSubwindowMode");

   function XSetTSOrigin
     (arg1 : System.Address;
      arg2 : GC;
      arg3 : int;
      arg4 : int) return int;  -- /usr/include/X11/Xlib.h:3332
   pragma Import (C, XSetTSOrigin, "XSetTSOrigin");

   function XSetTile
     (arg1 : System.Address;
      arg2 : GC;
      arg3 : X11_X_h.Pixmap) return int;  -- /usr/include/X11/Xlib.h:3339
   pragma Import (C, XSetTile, "XSetTile");

   function XSetWindowBackground
     (arg1 : System.Address;
      arg2 : X11_X_h.Window;
      arg3 : unsigned_long) return int;  -- /usr/include/X11/Xlib.h:3345
   pragma Import (C, XSetWindowBackground, "XSetWindowBackground");

   function XSetWindowBackgroundPixmap
     (arg1 : System.Address;
      arg2 : X11_X_h.Window;
      arg3 : X11_X_h.Pixmap) return int;  -- /usr/include/X11/Xlib.h:3351
   pragma Import (C, XSetWindowBackgroundPixmap, "XSetWindowBackgroundPixmap");

   function XSetWindowBorder
     (arg1 : System.Address;
      arg2 : X11_X_h.Window;
      arg3 : unsigned_long) return int;  -- /usr/include/X11/Xlib.h:3357
   pragma Import (C, XSetWindowBorder, "XSetWindowBorder");

   function XSetWindowBorderPixmap
     (arg1 : System.Address;
      arg2 : X11_X_h.Window;
      arg3 : X11_X_h.Pixmap) return int;  -- /usr/include/X11/Xlib.h:3363
   pragma Import (C, XSetWindowBorderPixmap, "XSetWindowBorderPixmap");

   function XSetWindowBorderWidth
     (arg1 : System.Address;
      arg2 : X11_X_h.Window;
      arg3 : unsigned) return int;  -- /usr/include/X11/Xlib.h:3369
   pragma Import (C, XSetWindowBorderWidth, "XSetWindowBorderWidth");

   function XSetWindowColormap
     (arg1 : System.Address;
      arg2 : X11_X_h.Window;
      arg3 : X11_X_h.Colormap) return int;  -- /usr/include/X11/Xlib.h:3375
   pragma Import (C, XSetWindowColormap, "XSetWindowColormap");

   function XStoreBuffer
     (arg1 : System.Address;
      arg2 : Interfaces.C.Strings.chars_ptr;
      arg3 : int;
      arg4 : int) return int;  -- /usr/include/X11/Xlib.h:3381
   pragma Import (C, XStoreBuffer, "XStoreBuffer");

   function XStoreBytes
     (arg1 : System.Address;
      arg2 : Interfaces.C.Strings.chars_ptr;
      arg3 : int) return int;  -- /usr/include/X11/Xlib.h:3388
   pragma Import (C, XStoreBytes, "XStoreBytes");

   function XStoreColor
     (arg1 : System.Address;
      arg2 : X11_X_h.Colormap;
      arg3 : access XColor) return int;  -- /usr/include/X11/Xlib.h:3394
   pragma Import (C, XStoreColor, "XStoreColor");

   function XStoreColors
     (arg1 : System.Address;
      arg2 : X11_X_h.Colormap;
      arg3 : access XColor;
      arg4 : int) return int;  -- /usr/include/X11/Xlib.h:3400
   pragma Import (C, XStoreColors, "XStoreColors");

   function XStoreName
     (arg1 : System.Address;
      arg2 : X11_X_h.Window;
      arg3 : Interfaces.C.Strings.chars_ptr) return int;  -- /usr/include/X11/Xlib.h:3407
   pragma Import (C, XStoreName, "XStoreName");

   function XStoreNamedColor
     (arg1 : System.Address;
      arg2 : X11_X_h.Colormap;
      arg3 : Interfaces.C.Strings.chars_ptr;
      arg4 : unsigned_long;
      arg5 : int) return int;  -- /usr/include/X11/Xlib.h:3413
   pragma Import (C, XStoreNamedColor, "XStoreNamedColor");

   function XSync (arg1 : System.Address; arg2 : int) return int;  -- /usr/include/X11/Xlib.h:3421
   pragma Import (C, XSync, "XSync");

   function XTextExtents
     (arg1 : access XFontStruct;
      arg2 : Interfaces.C.Strings.chars_ptr;
      arg3 : int;
      arg4 : access int;
      arg5 : access int;
      arg6 : access int;
      arg7 : access XCharStruct) return int;  -- /usr/include/X11/Xlib.h:3426
   pragma Import (C, XTextExtents, "XTextExtents");

   function XTextExtents16
     (arg1 : access XFontStruct;
      arg2 : access constant XChar2b;
      arg3 : int;
      arg4 : access int;
      arg5 : access int;
      arg6 : access int;
      arg7 : access XCharStruct) return int;  -- /usr/include/X11/Xlib.h:3436
   pragma Import (C, XTextExtents16, "XTextExtents16");

   function XTextWidth
     (arg1 : access XFontStruct;
      arg2 : Interfaces.C.Strings.chars_ptr;
      arg3 : int) return int;  -- /usr/include/X11/Xlib.h:3446
   pragma Import (C, XTextWidth, "XTextWidth");

   function XTextWidth16
     (arg1 : access XFontStruct;
      arg2 : access constant XChar2b;
      arg3 : int) return int;  -- /usr/include/X11/Xlib.h:3452
   pragma Import (C, XTextWidth16, "XTextWidth16");

   function XTranslateCoordinates
     (arg1 : System.Address;
      arg2 : X11_X_h.Window;
      arg3 : X11_X_h.Window;
      arg4 : int;
      arg5 : int;
      arg6 : access int;
      arg7 : access int;
      arg8 : access X11_X_h.Window) return int;  -- /usr/include/X11/Xlib.h:3458
   pragma Import (C, XTranslateCoordinates, "XTranslateCoordinates");

   function XUndefineCursor (arg1 : System.Address; arg2 : X11_X_h.Window) return int;  -- /usr/include/X11/Xlib.h:3469
   pragma Import (C, XUndefineCursor, "XUndefineCursor");

   function XUngrabButton
     (arg1 : System.Address;
      arg2 : unsigned;
      arg3 : unsigned;
      arg4 : X11_X_h.Window) return int;  -- /usr/include/X11/Xlib.h:3474
   pragma Import (C, XUngrabButton, "XUngrabButton");

   function XUngrabKey
     (arg1 : System.Address;
      arg2 : int;
      arg3 : unsigned;
      arg4 : X11_X_h.Window) return int;  -- /usr/include/X11/Xlib.h:3481
   pragma Import (C, XUngrabKey, "XUngrabKey");

   function XUngrabKeyboard (arg1 : System.Address; arg2 : X11_X_h.Time) return int;  -- /usr/include/X11/Xlib.h:3488
   pragma Import (C, XUngrabKeyboard, "XUngrabKeyboard");

   function XUngrabPointer (arg1 : System.Address; arg2 : X11_X_h.Time) return int;  -- /usr/include/X11/Xlib.h:3493
   pragma Import (C, XUngrabPointer, "XUngrabPointer");

   function XUngrabServer (arg1 : System.Address) return int;  -- /usr/include/X11/Xlib.h:3498
   pragma Import (C, XUngrabServer, "XUngrabServer");

   function XUninstallColormap (arg1 : System.Address; arg2 : X11_X_h.Colormap) return int;  -- /usr/include/X11/Xlib.h:3502
   pragma Import (C, XUninstallColormap, "XUninstallColormap");

   function XUnloadFont (arg1 : System.Address; arg2 : X11_X_h.Font) return int;  -- /usr/include/X11/Xlib.h:3507
   pragma Import (C, XUnloadFont, "XUnloadFont");

   function XUnmapSubwindows (arg1 : System.Address; arg2 : X11_X_h.Window) return int;  -- /usr/include/X11/Xlib.h:3512
   pragma Import (C, XUnmapSubwindows, "XUnmapSubwindows");

   function XUnmapWindow (arg1 : System.Address; arg2 : X11_X_h.Window) return int;  -- /usr/include/X11/Xlib.h:3517
   pragma Import (C, XUnmapWindow, "XUnmapWindow");

   function XVendorRelease (arg1 : System.Address) return int;  -- /usr/include/X11/Xlib.h:3522
   pragma Import (C, XVendorRelease, "XVendorRelease");

   function XWarpPointer
     (arg1 : System.Address;
      arg2 : X11_X_h.Window;
      arg3 : X11_X_h.Window;
      arg4 : int;
      arg5 : int;
      arg6 : unsigned;
      arg7 : unsigned;
      arg8 : int;
      arg9 : int) return int;  -- /usr/include/X11/Xlib.h:3526
   pragma Import (C, XWarpPointer, "XWarpPointer");

   function XWidthMMOfScreen (arg1 : access Screen) return int;  -- /usr/include/X11/Xlib.h:3538
   pragma Import (C, XWidthMMOfScreen, "XWidthMMOfScreen");

   function XWidthOfScreen (arg1 : access Screen) return int;  -- /usr/include/X11/Xlib.h:3542
   pragma Import (C, XWidthOfScreen, "XWidthOfScreen");

   function XWindowEvent
     (arg1 : System.Address;
      arg2 : X11_X_h.Window;
      arg3 : long;
      arg4 : access XEvent) return int;  -- /usr/include/X11/Xlib.h:3546
   pragma Import (C, XWindowEvent, "XWindowEvent");

   function XWriteBitmapFile
     (arg1 : System.Address;
      arg2 : Interfaces.C.Strings.chars_ptr;
      arg3 : X11_X_h.Pixmap;
      arg4 : unsigned;
      arg5 : unsigned;
      arg6 : int;
      arg7 : int) return int;  -- /usr/include/X11/Xlib.h:3553
   pragma Import (C, XWriteBitmapFile, "XWriteBitmapFile");

   function XSupportsLocale return int;  -- /usr/include/X11/Xlib.h:3563
   pragma Import (C, XSupportsLocale, "XSupportsLocale");

   function XSetLocaleModifiers (arg1 : Interfaces.C.Strings.chars_ptr) return Interfaces.C.Strings.chars_ptr;  -- /usr/include/X11/Xlib.h:3565
   pragma Import (C, XSetLocaleModifiers, "XSetLocaleModifiers");

   function XOpenOM
     (arg1 : System.Address;
      arg2 : System.Address;
      arg3 : Interfaces.C.Strings.chars_ptr;
      arg4 : Interfaces.C.Strings.chars_ptr) return XOM;  -- /usr/include/X11/Xlib.h:3569
   pragma Import (C, XOpenOM, "XOpenOM");

   function XCloseOM (arg1 : XOM) return int;  -- /usr/include/X11/Xlib.h:3576
   pragma Import (C, XCloseOM, "XCloseOM");

   function XSetOMValues (arg1 : XOM  -- , ...
      ) return Interfaces.C.Strings.chars_ptr;  -- /usr/include/X11/Xlib.h:3580
   pragma Import (C, XSetOMValues, "XSetOMValues");

   function XGetOMValues (arg1 : XOM  -- , ...
      ) return Interfaces.C.Strings.chars_ptr;  -- /usr/include/X11/Xlib.h:3585
   pragma Import (C, XGetOMValues, "XGetOMValues");

   function XDisplayOfOM (arg1 : XOM) return System.Address;  -- /usr/include/X11/Xlib.h:3590
   pragma Import (C, XDisplayOfOM, "XDisplayOfOM");

   function XLocaleOfOM (arg1 : XOM) return Interfaces.C.Strings.chars_ptr;  -- /usr/include/X11/Xlib.h:3594
   pragma Import (C, XLocaleOfOM, "XLocaleOfOM");

   function XCreateOC (arg1 : XOM  -- , ...
      ) return XOC;  -- /usr/include/X11/Xlib.h:3598
   pragma Import (C, XCreateOC, "XCreateOC");

   procedure XDestroyOC (arg1 : XOC);  -- /usr/include/X11/Xlib.h:3603
   pragma Import (C, XDestroyOC, "XDestroyOC");

   function XOMOfOC (arg1 : XOC) return XOM;  -- /usr/include/X11/Xlib.h:3607
   pragma Import (C, XOMOfOC, "XOMOfOC");

   function XSetOCValues (arg1 : XOC  -- , ...
      ) return Interfaces.C.Strings.chars_ptr;  -- /usr/include/X11/Xlib.h:3611
   pragma Import (C, XSetOCValues, "XSetOCValues");

   function XGetOCValues (arg1 : XOC  -- , ...
      ) return Interfaces.C.Strings.chars_ptr;  -- /usr/include/X11/Xlib.h:3616
   pragma Import (C, XGetOCValues, "XGetOCValues");

   function XCreateFontSet
     (arg1 : System.Address;
      arg2 : Interfaces.C.Strings.chars_ptr;
      arg3 : System.Address;
      arg4 : access int;
      arg5 : System.Address) return XFontSet;  -- /usr/include/X11/Xlib.h:3621
   pragma Import (C, XCreateFontSet, "XCreateFontSet");

   procedure XFreeFontSet (arg1 : System.Address; arg2 : XFontSet);  -- /usr/include/X11/Xlib.h:3629
   pragma Import (C, XFreeFontSet, "XFreeFontSet");

   function XFontsOfFontSet
     (arg1 : XFontSet;
      arg2 : System.Address;
      arg3 : System.Address) return int;  -- /usr/include/X11/Xlib.h:3634
   pragma Import (C, XFontsOfFontSet, "XFontsOfFontSet");

   function XBaseFontNameListOfFontSet (arg1 : XFontSet) return Interfaces.C.Strings.chars_ptr;  -- /usr/include/X11/Xlib.h:3640
   pragma Import (C, XBaseFontNameListOfFontSet, "XBaseFontNameListOfFontSet");

   function XLocaleOfFontSet (arg1 : XFontSet) return Interfaces.C.Strings.chars_ptr;  -- /usr/include/X11/Xlib.h:3644
   pragma Import (C, XLocaleOfFontSet, "XLocaleOfFontSet");

   function XContextDependentDrawing (arg1 : XFontSet) return int;  -- /usr/include/X11/Xlib.h:3648
   pragma Import (C, XContextDependentDrawing, "XContextDependentDrawing");

   function XDirectionalDependentDrawing (arg1 : XFontSet) return int;  -- /usr/include/X11/Xlib.h:3652
   pragma Import (C, XDirectionalDependentDrawing, "XDirectionalDependentDrawing");

   function XContextualDrawing (arg1 : XFontSet) return int;  -- /usr/include/X11/Xlib.h:3656
   pragma Import (C, XContextualDrawing, "XContextualDrawing");

   function XExtentsOfFontSet (arg1 : XFontSet) return access XFontSetExtents;  -- /usr/include/X11/Xlib.h:3660
   pragma Import (C, XExtentsOfFontSet, "XExtentsOfFontSet");

   function XmbTextEscapement
     (arg1 : XFontSet;
      arg2 : Interfaces.C.Strings.chars_ptr;
      arg3 : int) return int;  -- /usr/include/X11/Xlib.h:3664
   pragma Import (C, XmbTextEscapement, "XmbTextEscapement");

   function XwcTextEscapement
     (arg1 : XFontSet;
      arg2 : access wchar_t;
      arg3 : int) return int;  -- /usr/include/X11/Xlib.h:3670
   pragma Import (C, XwcTextEscapement, "XwcTextEscapement");

   function Xutf8TextEscapement
     (arg1 : XFontSet;
      arg2 : Interfaces.C.Strings.chars_ptr;
      arg3 : int) return int;  -- /usr/include/X11/Xlib.h:3676
   pragma Import (C, Xutf8TextEscapement, "Xutf8TextEscapement");

   function XmbTextExtents
     (arg1 : XFontSet;
      arg2 : Interfaces.C.Strings.chars_ptr;
      arg3 : int;
      arg4 : access XRectangle;
      arg5 : access XRectangle) return int;  -- /usr/include/X11/Xlib.h:3682
   pragma Import (C, XmbTextExtents, "XmbTextExtents");

   function XwcTextExtents
     (arg1 : XFontSet;
      arg2 : access wchar_t;
      arg3 : int;
      arg4 : access XRectangle;
      arg5 : access XRectangle) return int;  -- /usr/include/X11/Xlib.h:3690
   pragma Import (C, XwcTextExtents, "XwcTextExtents");

   function Xutf8TextExtents
     (arg1 : XFontSet;
      arg2 : Interfaces.C.Strings.chars_ptr;
      arg3 : int;
      arg4 : access XRectangle;
      arg5 : access XRectangle) return int;  -- /usr/include/X11/Xlib.h:3698
   pragma Import (C, Xutf8TextExtents, "Xutf8TextExtents");

   function XmbTextPerCharExtents
     (arg1 : XFontSet;
      arg2 : Interfaces.C.Strings.chars_ptr;
      arg3 : int;
      arg4 : access XRectangle;
      arg5 : access XRectangle;
      arg6 : int;
      arg7 : access int;
      arg8 : access XRectangle;
      arg9 : access XRectangle) return int;  -- /usr/include/X11/Xlib.h:3706
   pragma Import (C, XmbTextPerCharExtents, "XmbTextPerCharExtents");

   function XwcTextPerCharExtents
     (arg1 : XFontSet;
      arg2 : access wchar_t;
      arg3 : int;
      arg4 : access XRectangle;
      arg5 : access XRectangle;
      arg6 : int;
      arg7 : access int;
      arg8 : access XRectangle;
      arg9 : access XRectangle) return int;  -- /usr/include/X11/Xlib.h:3718
   pragma Import (C, XwcTextPerCharExtents, "XwcTextPerCharExtents");

   function Xutf8TextPerCharExtents
     (arg1 : XFontSet;
      arg2 : Interfaces.C.Strings.chars_ptr;
      arg3 : int;
      arg4 : access XRectangle;
      arg5 : access XRectangle;
      arg6 : int;
      arg7 : access int;
      arg8 : access XRectangle;
      arg9 : access XRectangle) return int;  -- /usr/include/X11/Xlib.h:3730
   pragma Import (C, Xutf8TextPerCharExtents, "Xutf8TextPerCharExtents");

   procedure XmbDrawText
     (arg1 : System.Address;
      arg2 : X11_X_h.Drawable;
      arg3 : GC;
      arg4 : int;
      arg5 : int;
      arg6 : access XmbTextItem;
      arg7 : int);  -- /usr/include/X11/Xlib.h:3742
   pragma Import (C, XmbDrawText, "XmbDrawText");

   procedure XwcDrawText
     (arg1 : System.Address;
      arg2 : X11_X_h.Drawable;
      arg3 : GC;
      arg4 : int;
      arg5 : int;
      arg6 : access XwcTextItem;
      arg7 : int);  -- /usr/include/X11/Xlib.h:3752
   pragma Import (C, XwcDrawText, "XwcDrawText");

   procedure Xutf8DrawText
     (arg1 : System.Address;
      arg2 : X11_X_h.Drawable;
      arg3 : GC;
      arg4 : int;
      arg5 : int;
      arg6 : access XmbTextItem;
      arg7 : int);  -- /usr/include/X11/Xlib.h:3762
   pragma Import (C, Xutf8DrawText, "Xutf8DrawText");

   procedure XmbDrawString
     (arg1 : System.Address;
      arg2 : X11_X_h.Drawable;
      arg3 : XFontSet;
      arg4 : GC;
      arg5 : int;
      arg6 : int;
      arg7 : Interfaces.C.Strings.chars_ptr;
      arg8 : int);  -- /usr/include/X11/Xlib.h:3772
   pragma Import (C, XmbDrawString, "XmbDrawString");

   procedure XwcDrawString
     (arg1 : System.Address;
      arg2 : X11_X_h.Drawable;
      arg3 : XFontSet;
      arg4 : GC;
      arg5 : int;
      arg6 : int;
      arg7 : access wchar_t;
      arg8 : int);  -- /usr/include/X11/Xlib.h:3783
   pragma Import (C, XwcDrawString, "XwcDrawString");

   procedure Xutf8DrawString
     (arg1 : System.Address;
      arg2 : X11_X_h.Drawable;
      arg3 : XFontSet;
      arg4 : GC;
      arg5 : int;
      arg6 : int;
      arg7 : Interfaces.C.Strings.chars_ptr;
      arg8 : int);  -- /usr/include/X11/Xlib.h:3794
   pragma Import (C, Xutf8DrawString, "Xutf8DrawString");

   procedure XmbDrawImageString
     (arg1 : System.Address;
      arg2 : X11_X_h.Drawable;
      arg3 : XFontSet;
      arg4 : GC;
      arg5 : int;
      arg6 : int;
      arg7 : Interfaces.C.Strings.chars_ptr;
      arg8 : int);  -- /usr/include/X11/Xlib.h:3805
   pragma Import (C, XmbDrawImageString, "XmbDrawImageString");

   procedure XwcDrawImageString
     (arg1 : System.Address;
      arg2 : X11_X_h.Drawable;
      arg3 : XFontSet;
      arg4 : GC;
      arg5 : int;
      arg6 : int;
      arg7 : access wchar_t;
      arg8 : int);  -- /usr/include/X11/Xlib.h:3816
   pragma Import (C, XwcDrawImageString, "XwcDrawImageString");

   procedure Xutf8DrawImageString
     (arg1 : System.Address;
      arg2 : X11_X_h.Drawable;
      arg3 : XFontSet;
      arg4 : GC;
      arg5 : int;
      arg6 : int;
      arg7 : Interfaces.C.Strings.chars_ptr;
      arg8 : int);  -- /usr/include/X11/Xlib.h:3827
   pragma Import (C, Xutf8DrawImageString, "Xutf8DrawImageString");

   function XOpenIM
     (arg1 : System.Address;
      arg2 : System.Address;
      arg3 : Interfaces.C.Strings.chars_ptr;
      arg4 : Interfaces.C.Strings.chars_ptr) return XIM;  -- /usr/include/X11/Xlib.h:3838
   pragma Import (C, XOpenIM, "XOpenIM");

   function XCloseIM (arg1 : XIM) return int;  -- /usr/include/X11/Xlib.h:3845
   pragma Import (C, XCloseIM, "XCloseIM");

   function XGetIMValues (arg1 : XIM  -- , ...
      ) return Interfaces.C.Strings.chars_ptr;  -- /usr/include/X11/Xlib.h:3849
   pragma Import (C, XGetIMValues, "XGetIMValues");

   function XSetIMValues (arg1 : XIM  -- , ...
      ) return Interfaces.C.Strings.chars_ptr;  -- /usr/include/X11/Xlib.h:3853
   pragma Import (C, XSetIMValues, "XSetIMValues");

   function XDisplayOfIM (arg1 : XIM) return System.Address;  -- /usr/include/X11/Xlib.h:3857
   pragma Import (C, XDisplayOfIM, "XDisplayOfIM");

   function XLocaleOfIM (arg1 : XIM) return Interfaces.C.Strings.chars_ptr;  -- /usr/include/X11/Xlib.h:3861
   pragma Import (C, XLocaleOfIM, "XLocaleOfIM");

   function XCreateIC (arg1 : XIM  -- , ...
      ) return XIC;  -- /usr/include/X11/Xlib.h:3865
   pragma Import (C, XCreateIC, "XCreateIC");

   procedure XDestroyIC (arg1 : XIC);  -- /usr/include/X11/Xlib.h:3869
   pragma Import (C, XDestroyIC, "XDestroyIC");

   procedure XSetICFocus (arg1 : XIC);  -- /usr/include/X11/Xlib.h:3873
   pragma Import (C, XSetICFocus, "XSetICFocus");

   procedure XUnsetICFocus (arg1 : XIC);  -- /usr/include/X11/Xlib.h:3877
   pragma Import (C, XUnsetICFocus, "XUnsetICFocus");

   function XwcResetIC (arg1 : XIC) return access wchar_t;  -- /usr/include/X11/Xlib.h:3881
   pragma Import (C, XwcResetIC, "XwcResetIC");

   function XmbResetIC (arg1 : XIC) return Interfaces.C.Strings.chars_ptr;  -- /usr/include/X11/Xlib.h:3885
   pragma Import (C, XmbResetIC, "XmbResetIC");

   function Xutf8ResetIC (arg1 : XIC) return Interfaces.C.Strings.chars_ptr;  -- /usr/include/X11/Xlib.h:3889
   pragma Import (C, Xutf8ResetIC, "Xutf8ResetIC");

   function XSetICValues (arg1 : XIC  -- , ...
      ) return Interfaces.C.Strings.chars_ptr;  -- /usr/include/X11/Xlib.h:3893
   pragma Import (C, XSetICValues, "XSetICValues");

   function XGetICValues (arg1 : XIC  -- , ...
      ) return Interfaces.C.Strings.chars_ptr;  -- /usr/include/X11/Xlib.h:3897
   pragma Import (C, XGetICValues, "XGetICValues");

   function XIMOfIC (arg1 : XIC) return XIM;  -- /usr/include/X11/Xlib.h:3901
   pragma Import (C, XIMOfIC, "XIMOfIC");

   function XFilterEvent (arg1 : access XEvent; arg2 : X11_X_h.Window) return int;  -- /usr/include/X11/Xlib.h:3905
   pragma Import (C, XFilterEvent, "XFilterEvent");

   function XmbLookupString
     (arg1 : XIC;
      arg2 : access XKeyPressedEvent;
      arg3 : Interfaces.C.Strings.chars_ptr;
      arg4 : int;
      arg5 : access X11_X_h.KeySym;
      arg6 : access int) return int;  -- /usr/include/X11/Xlib.h:3910
   pragma Import (C, XmbLookupString, "XmbLookupString");

   function XwcLookupString
     (arg1 : XIC;
      arg2 : access XKeyPressedEvent;
      arg3 : access wchar_t;
      arg4 : int;
      arg5 : access X11_X_h.KeySym;
      arg6 : access int) return int;  -- /usr/include/X11/Xlib.h:3919
   pragma Import (C, XwcLookupString, "XwcLookupString");

   function Xutf8LookupString
     (arg1 : XIC;
      arg2 : access XKeyPressedEvent;
      arg3 : Interfaces.C.Strings.chars_ptr;
      arg4 : int;
      arg5 : access X11_X_h.KeySym;
      arg6 : access int) return int;  -- /usr/include/X11/Xlib.h:3928
   pragma Import (C, Xutf8LookupString, "Xutf8LookupString");

   function XVaCreateNestedList (arg1 : int  -- , ...
      ) return XVaNestedList;  -- /usr/include/X11/Xlib.h:3937
   pragma Import (C, XVaCreateNestedList, "XVaCreateNestedList");

   function XRegisterIMInstantiateCallback
     (arg1 : System.Address;
      arg2 : System.Address;
      arg3 : Interfaces.C.Strings.chars_ptr;
      arg4 : Interfaces.C.Strings.chars_ptr;
      arg5 : XIDProc;
      arg6 : XPointer) return int;  -- /usr/include/X11/Xlib.h:3943
   pragma Import (C, XRegisterIMInstantiateCallback, "XRegisterIMInstantiateCallback");

   function XUnregisterIMInstantiateCallback
     (arg1 : System.Address;
      arg2 : System.Address;
      arg3 : Interfaces.C.Strings.chars_ptr;
      arg4 : Interfaces.C.Strings.chars_ptr;
      arg5 : XIDProc;
      arg6 : XPointer) return int;  -- /usr/include/X11/Xlib.h:3952
   pragma Import (C, XUnregisterIMInstantiateCallback, "XUnregisterIMInstantiateCallback");

   type XConnectionWatchProc is access procedure
        (arg1 : System.Address;
         arg2 : XPointer;
         arg3 : int;
         arg4 : int;
         arg5 : System.Address);
   pragma Convention (C, XConnectionWatchProc);  -- /usr/include/X11/Xlib.h:3961

   function XInternalConnectionNumbers
     (arg1 : System.Address;
      arg2 : System.Address;
      arg3 : access int) return int;  -- /usr/include/X11/Xlib.h:3970
   pragma Import (C, XInternalConnectionNumbers, "XInternalConnectionNumbers");

   procedure XProcessInternalConnection (arg1 : System.Address; arg2 : int);  -- /usr/include/X11/Xlib.h:3976
   pragma Import (C, XProcessInternalConnection, "XProcessInternalConnection");

   function XAddConnectionWatch
     (arg1 : System.Address;
      arg2 : XConnectionWatchProc;
      arg3 : XPointer) return int;  -- /usr/include/X11/Xlib.h:3981
   pragma Import (C, XAddConnectionWatch, "XAddConnectionWatch");

   procedure XRemoveConnectionWatch
     (arg1 : System.Address;
      arg2 : XConnectionWatchProc;
      arg3 : XPointer);  -- /usr/include/X11/Xlib.h:3987
   pragma Import (C, XRemoveConnectionWatch, "XRemoveConnectionWatch");

   procedure XSetAuthorization
     (arg1 : Interfaces.C.Strings.chars_ptr;
      arg2 : int;
      arg3 : Interfaces.C.Strings.chars_ptr;
      arg4 : int);  -- /usr/include/X11/Xlib.h:3993
   pragma Import (C, XSetAuthorization, "XSetAuthorization");

   --  skipped func _Xmbtowc

   --  skipped func _Xwctomb

   function XGetEventData (arg1 : System.Address; arg2 : access XGenericEventCookie) return int;  -- /usr/include/X11/Xlib.h:4016
   pragma Import (C, XGetEventData, "XGetEventData");

   procedure XFreeEventData (arg1 : System.Address; arg2 : access XGenericEventCookie);  -- /usr/include/X11/Xlib.h:4021
   pragma Import (C, XFreeEventData, "XFreeEventData");

end X11_Xlib_h;
