pragma Ada_2005;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;

package X11_X_h is

   --  unsupported macro: X_PROTOCOL 11
   --  unsupported macro: X_PROTOCOL_REVISION 0
   None : constant := 0;
   --  unsupported macro: ParentRelative 1L
   --  unsupported macro: CopyFromParent 0L
   --  unsupported macro: PointerWindow 0L
   --  unsupported macro: InputFocus 1L
   --  unsupported macro: PointerRoot 1L
   --  unsupported macro: AnyPropertyType 0L
   --  unsupported macro: AnyKey 0L
   --  unsupported macro: AnyButton 0L
   --  unsupported macro: AllTemporary 0L
   CurrentTime : constant := 0;
   --  unsupported macro: NoSymbol 0L
   --  unsupported macro: NoEventMask 0L
   --  unsupported macro: KeyPressMask (1L<<0)
   --  unsupported macro: KeyReleaseMask (1L<<1)
   ButtonPressMask   : constant := (2**2);
   ButtonReleaseMask : constant := (2**3);
   --  unsupported macro: EnterWindowMask (1L<<4)
   --  unsupported macro: LeaveWindowMask (1L<<5)
   PointerMotionMask : constant := (2 ** 6);
   --  unsupported macro: PointerMotionHintMask (1L<<7)
   --  unsupported macro: Button1MotionMask (1L<<8)
   --  unsupported macro: Button2MotionMask (1L<<9)
   --  unsupported macro: Button3MotionMask (1L<<10)
   --  unsupported macro: Button4MotionMask (1L<<11)
   --  unsupported macro: Button5MotionMask (1L<<12)
   --  unsupported macro: ButtonMotionMask (1L<<13)
   --  unsupported macro: KeymapStateMask (1L<<14)
   --  unsupported macro: ExposureMask (1L<<15)
   --  unsupported macro: VisibilityChangeMask (1L<<16)
   --  unsupported macro: StructureNotifyMask (1L<<17)
   --  unsupported macro: ResizeRedirectMask (1L<<18)
   --  unsupported macro: SubstructureNotifyMask (1L<<19)
   --  unsupported macro: SubstructureRedirectMask (1L<<20)
   --  unsupported macro: FocusChangeMask (1L<<21)
   --  unsupported macro: PropertyChangeMask (1L<<22)
   --  unsupported macro: ColormapChangeMask (1L<<23)
   --  unsupported macro: OwnerGrabButtonMask (1L<<24)
   --  unsupported macro: KeyPress 2
   --  unsupported macro: KeyRelease 3
   ButtonPress : constant := 4;
   ButtonRelease : constant := 5;
   MotionNotify : constant := 6;
   --  unsupported macro: EnterNotify 7
   --  unsupported macro: LeaveNotify 8
   --  unsupported macro: FocusIn 9
   --  unsupported macro: FocusOut 10
   --  unsupported macro: KeymapNotify 11
   --  unsupported macro: Expose 12
   --  unsupported macro: GraphicsExpose 13
   --  unsupported macro: NoExpose 14
   --  unsupported macro: VisibilityNotify 15
   --  unsupported macro: CreateNotify 16
   --  unsupported macro: DestroyNotify 17
   --  unsupported macro: UnmapNotify 18
   --  unsupported macro: MapNotify 19
   --  unsupported macro: MapRequest 20
   --  unsupported macro: ReparentNotify 21
   --  unsupported macro: ConfigureNotify 22
   --  unsupported macro: ConfigureRequest 23
   --  unsupported macro: GravityNotify 24
   --  unsupported macro: ResizeRequest 25
   --  unsupported macro: CirculateNotify 26
   --  unsupported macro: CirculateRequest 27
   --  unsupported macro: PropertyNotify 28
   --  unsupported macro: SelectionClear 29
   --  unsupported macro: SelectionRequest 30
   --  unsupported macro: SelectionNotify 31
   --  unsupported macro: ColormapNotify 32
   --  unsupported macro: ClientMessage 33
   --  unsupported macro: MappingNotify 34
   --  unsupported macro: GenericEvent 35
   --  unsupported macro: LASTEvent 36
   --  unsupported macro: ShiftMask (1<<0)
   --  unsupported macro: LockMask (1<<1)
   --  unsupported macro: ControlMask (1<<2)
   --  unsupported macro: Mod1Mask (1<<3)
   --  unsupported macro: Mod2Mask (1<<4)
   --  unsupported macro: Mod3Mask (1<<5)
   --  unsupported macro: Mod4Mask (1<<6)
   --  unsupported macro: Mod5Mask (1<<7)
   --  unsupported macro: ShiftMapIndex 0
   --  unsupported macro: LockMapIndex 1
   --  unsupported macro: ControlMapIndex 2
   --  unsupported macro: Mod1MapIndex 3
   --  unsupported macro: Mod2MapIndex 4
   --  unsupported macro: Mod3MapIndex 5
   --  unsupported macro: Mod4MapIndex 6
   --  unsupported macro: Mod5MapIndex 7
   --  unsupported macro: Button1Mask (1<<8)
   --  unsupported macro: Button2Mask (1<<9)
   --  unsupported macro: Button3Mask (1<<10)
   --  unsupported macro: Button4Mask (1<<11)
   --  unsupported macro: Button5Mask (1<<12)
   --  unsupported macro: AnyModifier (1<<15)
   --  unsupported macro: Button1 1
   --  unsupported macro: Button2 2
   --  unsupported macro: Button3 3
   --  unsupported macro: Button4 4
   --  unsupported macro: Button5 5
   --  unsupported macro: NotifyNormal 0
   --  unsupported macro: NotifyGrab 1
   --  unsupported macro: NotifyUngrab 2
   --  unsupported macro: NotifyWhileGrabbed 3
   --  unsupported macro: NotifyHint 1
   --  unsupported macro: NotifyAncestor 0
   --  unsupported macro: NotifyVirtual 1
   --  unsupported macro: NotifyInferior 2
   --  unsupported macro: NotifyNonlinear 3
   --  unsupported macro: NotifyNonlinearVirtual 4
   --  unsupported macro: NotifyPointer 5
   --  unsupported macro: NotifyPointerRoot 6
   --  unsupported macro: NotifyDetailNone 7
   --  unsupported macro: VisibilityUnobscured 0
   --  unsupported macro: VisibilityPartiallyObscured 1
   --  unsupported macro: VisibilityFullyObscured 2
   --  unsupported macro: PlaceOnTop 0
   --  unsupported macro: PlaceOnBottom 1
   --  unsupported macro: FamilyInternet 0
   --  unsupported macro: FamilyDECnet 1
   --  unsupported macro: FamilyChaos 2
   --  unsupported macro: FamilyInternet6 6
   --  unsupported macro: FamilyServerInterpreted 5
   --  unsupported macro: PropertyNewValue 0
   --  unsupported macro: PropertyDelete 1
   --  unsupported macro: ColormapUninstalled 0
   --  unsupported macro: ColormapInstalled 1
   --  unsupported macro: GrabModeSync 0
   GrabModeAsync : constant := 1;  --  /usr/include/X11/X.h:319
   --  unsupported macro: GrabSuccess 0
   --  unsupported macro: AlreadyGrabbed 1
   --  unsupported macro: GrabInvalidTime 2
   --  unsupported macro: GrabNotViewable 3
   --  unsupported macro: GrabFrozen 4
   --  unsupported macro: AsyncPointer 0
   --  unsupported macro: SyncPointer 1
   --  unsupported macro: ReplayPointer 2
   --  unsupported macro: AsyncKeyboard 3
   --  unsupported macro: SyncKeyboard 4
   --  unsupported macro: ReplayKeyboard 5
   --  unsupported macro: AsyncBoth 6
   AsyncBoth : constant := 6;
   --  unsupported macro: SyncBoth 7
   --  unsupported macro: RevertToNone (int)None
   --  unsupported macro: RevertToPointerRoot (int)PointerRoot
   --  unsupported macro: RevertToParent 2
   --  unsupported macro: Success 0
   --  unsupported macro: BadRequest 1
   --  unsupported macro: BadValue 2
   --  unsupported macro: BadWindow 3
   --  unsupported macro: BadPixmap 4
   --  unsupported macro: BadAtom 5
   --  unsupported macro: BadCursor 6
   --  unsupported macro: BadFont 7
   --  unsupported macro: BadMatch 8
   --  unsupported macro: BadDrawable 9
   --  unsupported macro: BadAccess 10
   --  unsupported macro: BadAlloc 11
   --  unsupported macro: BadColor 12
   --  unsupported macro: BadGC 13
   --  unsupported macro: BadIDChoice 14
   --  unsupported macro: BadName 15
   --  unsupported macro: BadLength 16
   --  unsupported macro: BadImplementation 17
   --  unsupported macro: FirstExtensionError 128
   --  unsupported macro: LastExtensionError 255
   --  unsupported macro: InputOutput 1
   --  unsupported macro: InputOnly 2
   --  unsupported macro: CWBackPixmap (1L<<0)
   --  unsupported macro: CWBackPixel (1L<<1)
   --  unsupported macro: CWBorderPixmap (1L<<2)
   --  unsupported macro: CWBorderPixel (1L<<3)
   --  unsupported macro: CWBitGravity (1L<<4)
   --  unsupported macro: CWWinGravity (1L<<5)
   --  unsupported macro: CWBackingStore (1L<<6)
   --  unsupported macro: CWBackingPlanes (1L<<7)
   --  unsupported macro: CWBackingPixel (1L<<8)
   --  unsupported macro: CWOverrideRedirect (1L<<9)
   --  unsupported macro: CWSaveUnder (1L<<10)
   --  unsupported macro: CWEventMask (1L<<11)
   --  unsupported macro: CWDontPropagate (1L<<12)
   --  unsupported macro: CWColormap (1L<<13)
   --  unsupported macro: CWCursor (1L<<14)
   --  unsupported macro: CWX (1<<0)
   --  unsupported macro: CWY (1<<1)
   --  unsupported macro: CWWidth (1<<2)
   --  unsupported macro: CWHeight (1<<3)
   --  unsupported macro: CWBorderWidth (1<<4)
   --  unsupported macro: CWSibling (1<<5)
   --  unsupported macro: CWStackMode (1<<6)
   --  unsupported macro: ForgetGravity 0
   --  unsupported macro: NorthWestGravity 1
   --  unsupported macro: NorthGravity 2
   --  unsupported macro: NorthEastGravity 3
   --  unsupported macro: WestGravity 4
   --  unsupported macro: CenterGravity 5
   --  unsupported macro: EastGravity 6
   --  unsupported macro: SouthWestGravity 7
   --  unsupported macro: SouthGravity 8
   --  unsupported macro: SouthEastGravity 9
   --  unsupported macro: StaticGravity 10
   --  unsupported macro: UnmapGravity 0
   --  unsupported macro: NotUseful 0
   --  unsupported macro: WhenMapped 1
   --  unsupported macro: Always 2
   --  unsupported macro: IsUnmapped 0
   --  unsupported macro: IsUnviewable 1
   --  unsupported macro: IsViewable 2
   --  unsupported macro: SetModeInsert 0
   --  unsupported macro: SetModeDelete 1
   --  unsupported macro: DestroyAll 0
   --  unsupported macro: RetainPermanent 1
   --  unsupported macro: RetainTemporary 2
   --  unsupported macro: Above 0
   --  unsupported macro: Below 1
   --  unsupported macro: TopIf 2
   --  unsupported macro: BottomIf 3
   --  unsupported macro: Opposite 4
   --  unsupported macro: RaiseLowest 0
   --  unsupported macro: LowerHighest 1
   --  unsupported macro: PropModeReplace 0
   --  unsupported macro: PropModePrepend 1
   --  unsupported macro: PropModeAppend 2
   --  unsupported macro: GXclear 0x0
   --  unsupported macro: GXand 0x1
   --  unsupported macro: GXandReverse 0x2
   --  unsupported macro: GXcopy 0x3
   --  unsupported macro: GXandInverted 0x4
   --  unsupported macro: GXnoop 0x5
   --  unsupported macro: GXxor 0x6
   --  unsupported macro: GXor 0x7
   --  unsupported macro: GXnor 0x8
   --  unsupported macro: GXequiv 0x9
   --  unsupported macro: GXinvert 0xa
   --  unsupported macro: GXorReverse 0xb
   --  unsupported macro: GXcopyInverted 0xc
   --  unsupported macro: GXorInverted 0xd
   --  unsupported macro: GXnand 0xe
   --  unsupported macro: GXset 0xf
   --  unsupported macro: LineSolid 0
   --  unsupported macro: LineOnOffDash 1
   --  unsupported macro: LineDoubleDash 2
   --  unsupported macro: CapNotLast 0
   --  unsupported macro: CapButt 1
   --  unsupported macro: CapRound 2
   --  unsupported macro: CapProjecting 3
   --  unsupported macro: JoinMiter 0
   --  unsupported macro: JoinRound 1
   --  unsupported macro: JoinBevel 2
   --  unsupported macro: FillSolid 0
   --  unsupported macro: FillTiled 1
   --  unsupported macro: FillStippled 2
   --  unsupported macro: FillOpaqueStippled 3
   --  unsupported macro: EvenOddRule 0
   --  unsupported macro: WindingRule 1
   --  unsupported macro: ClipByChildren 0
   --  unsupported macro: IncludeInferiors 1
   --  unsupported macro: Unsorted 0
   --  unsupported macro: YSorted 1
   --  unsupported macro: YXSorted 2
   --  unsupported macro: YXBanded 3
   --  unsupported macro: CoordModeOrigin 0
   --  unsupported macro: CoordModePrevious 1
   --  unsupported macro: Complex 0
   --  unsupported macro: Nonconvex 1
   --  unsupported macro: Convex 2
   --  unsupported macro: ArcChord 0
   --  unsupported macro: ArcPieSlice 1
   --  unsupported macro: GCFunction (1L<<0)
   --  unsupported macro: GCPlaneMask (1L<<1)
   --  unsupported macro: GCForeground (1L<<2)
   --  unsupported macro: GCBackground (1L<<3)
   --  unsupported macro: GCLineWidth (1L<<4)
   --  unsupported macro: GCLineStyle (1L<<5)
   --  unsupported macro: GCCapStyle (1L<<6)
   --  unsupported macro: GCJoinStyle (1L<<7)
   --  unsupported macro: GCFillStyle (1L<<8)
   --  unsupported macro: GCFillRule (1L<<9)
   --  unsupported macro: GCTile (1L<<10)
   --  unsupported macro: GCStipple (1L<<11)
   --  unsupported macro: GCTileStipXOrigin (1L<<12)
   --  unsupported macro: GCTileStipYOrigin (1L<<13)
   --  unsupported macro: GCFont (1L<<14)
   --  unsupported macro: GCSubwindowMode (1L<<15)
   --  unsupported macro: GCGraphicsExposures (1L<<16)
   --  unsupported macro: GCClipXOrigin (1L<<17)
   --  unsupported macro: GCClipYOrigin (1L<<18)
   --  unsupported macro: GCClipMask (1L<<19)
   --  unsupported macro: GCDashOffset (1L<<20)
   --  unsupported macro: GCDashList (1L<<21)
   --  unsupported macro: GCArcMode (1L<<22)
   --  unsupported macro: GCLastBit 22
   --  unsupported macro: FontLeftToRight 0
   --  unsupported macro: FontRightToLeft 1
   --  unsupported macro: FontChange 255
   --  unsupported macro: XYBitmap 0
   --  unsupported macro: XYPixmap 1
   --  unsupported macro: ZPixmap 2
   --  unsupported macro: AllocNone 0
   --  unsupported macro: AllocAll 1
   --  unsupported macro: DoRed (1<<0)
   --  unsupported macro: DoGreen (1<<1)
   --  unsupported macro: DoBlue (1<<2)
   --  unsupported macro: CursorShape 0
   --  unsupported macro: TileShape 1
   --  unsupported macro: StippleShape 2
   --  unsupported macro: AutoRepeatModeOff 0
   --  unsupported macro: AutoRepeatModeOn 1
   --  unsupported macro: AutoRepeatModeDefault 2
   --  unsupported macro: LedModeOff 0
   --  unsupported macro: LedModeOn 1
   --  unsupported macro: KBKeyClickPercent (1L<<0)
   --  unsupported macro: KBBellPercent (1L<<1)
   --  unsupported macro: KBBellPitch (1L<<2)
   --  unsupported macro: KBBellDuration (1L<<3)
   --  unsupported macro: KBLed (1L<<4)
   --  unsupported macro: KBLedMode (1L<<5)
   --  unsupported macro: KBKey (1L<<6)
   --  unsupported macro: KBAutoRepeatMode (1L<<7)
   --  unsupported macro: MappingSuccess 0
   --  unsupported macro: MappingBusy 1
   --  unsupported macro: MappingFailed 2
   --  unsupported macro: MappingModifier 0
   --  unsupported macro: MappingKeyboard 1
   --  unsupported macro: MappingPointer 2
   --  unsupported macro: DontPreferBlanking 0
   --  unsupported macro: PreferBlanking 1
   --  unsupported macro: DefaultBlanking 2
   --  unsupported macro: DisableScreenSaver 0
   --  unsupported macro: DisableScreenInterval 0
   --  unsupported macro: DontAllowExposures 0
   --  unsupported macro: AllowExposures 1
   --  unsupported macro: DefaultExposures 2
   --  unsupported macro: ScreenSaverReset 0
   --  unsupported macro: ScreenSaverActive 1
   --  unsupported macro: HostInsert 0
   --  unsupported macro: HostDelete 1
   --  unsupported macro: EnableAccess 1
   --  unsupported macro: DisableAccess 0
   --  unsupported macro: StaticGray 0
   --  unsupported macro: GrayScale 1
   --  unsupported macro: StaticColor 2
   --  unsupported macro: PseudoColor 3
   --  unsupported macro: TrueColor 4
   --  unsupported macro: DirectColor 5
   --  unsupported macro: LSBFirst 0
   --  unsupported macro: MSBFirst 1
   subtype XID is unsigned_long;  -- /usr/include/X11/X.h:66

   subtype Mask is unsigned_long;  -- /usr/include/X11/X.h:70

   subtype Atom is unsigned_long;  -- /usr/include/X11/X.h:74

   subtype VisualID is unsigned_long;  -- /usr/include/X11/X.h:76

   subtype Time is unsigned_long;  -- /usr/include/X11/X.h:77

   subtype Window is XID;  -- /usr/include/X11/X.h:96

   subtype Drawable is XID;  -- /usr/include/X11/X.h:97

   subtype Font is XID;  -- /usr/include/X11/X.h:100

   subtype Pixmap is XID;  -- /usr/include/X11/X.h:102

   subtype Cursor is XID;  -- /usr/include/X11/X.h:103

   subtype Colormap is XID;  -- /usr/include/X11/X.h:104

   subtype GContext is XID;  -- /usr/include/X11/X.h:105

   subtype KeySym is XID;  -- /usr/include/X11/X.h:106

   subtype KeyCode is unsigned_char;  -- /usr/include/X11/X.h:108

end X11_X_h;
