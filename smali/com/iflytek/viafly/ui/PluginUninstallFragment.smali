.class public Lcom/iflytek/viafly/ui/PluginUninstallFragment;
.super Lcom/iflytek/yd/ui/BaseFragment;
.source "PluginUninstallFragment.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PluginUninstallFragment"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/iflytek/yd/ui/BaseFragment;-><init>()V

    return-void
.end method

.method private getContentView()Landroid/view/View;
    .locals 28

    .prologue
    .line 87
    const/4 v4, 0x0

    .line 90
    .local v4, "contentView":Lcom/iflytek/base/skin/customView/XLinearLayout;
    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/viafly/ui/PluginUninstallFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    .line 91
    .local v5, "context":Landroid/content/Context;
    new-instance v4, Lcom/iflytek/base/skin/customView/XLinearLayout;

    .end local v4    # "contentView":Lcom/iflytek/base/skin/customView/XLinearLayout;
    invoke-direct {v4, v5}, Lcom/iflytek/base/skin/customView/XLinearLayout;-><init>(Landroid/content/Context;)V

    .line 92
    .restart local v4    # "contentView":Lcom/iflytek/base/skin/customView/XLinearLayout;
    const-wide/high16 v24, 0x401c000000000000L    # 7.0

    move-wide/from16 v0, v24

    invoke-static {v5, v0, v1}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v23

    const-wide/high16 v24, 0x4028000000000000L    # 12.0

    .line 93
    move-wide/from16 v0, v24

    invoke-static {v5, v0, v1}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v24

    const-wide/high16 v26, 0x401c000000000000L    # 7.0

    move-wide/from16 v0, v26

    invoke-static {v5, v0, v1}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v25

    const/16 v26, 0x0

    .line 92
    move/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setPadding(IIII)V

    .line 94
    new-instance v23, Landroid/view/ViewGroup$LayoutParams;

    const/16 v24, -0x1

    const/16 v25, -0x1

    invoke-direct/range {v23 .. v25}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 96
    const/16 v23, 0x1

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setOrientation(I)V

    .line 98
    new-instance v16, Lcom/iflytek/base/skin/customView/XLinearLayout;

    move-object/from16 v0, v16

    invoke-direct {v0, v5}, Lcom/iflytek/base/skin/customView/XLinearLayout;-><init>(Landroid/content/Context;)V

    .line 99
    .local v16, "pluginInfo":Lcom/iflytek/base/skin/customView/XLinearLayout;
    const/16 v23, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setOrientation(I)V

    .line 100
    new-instance v23, Landroid/view/ViewGroup$LayoutParams;

    const/16 v24, -0x1

    const/16 v25, -0x2

    invoke-direct/range {v23 .. v25}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 104
    new-instance v22, Lcom/iflytek/base/skin/customView/XLinearLayout;

    move-object/from16 v0, v22

    invoke-direct {v0, v5}, Lcom/iflytek/base/skin/customView/XLinearLayout;-><init>(Landroid/content/Context;)V

    .line 105
    .local v22, "viewTop":Lcom/iflytek/base/skin/customView/XLinearLayout;
    new-instance v23, Landroid/view/ViewGroup$LayoutParams;

    const/16 v24, -0x1

    const/16 v25, -0x2

    invoke-direct/range {v23 .. v25}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual/range {v22 .. v23}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 107
    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setOrientation(I)V

    .line 108
    const/16 v23, 0x10

    invoke-virtual/range {v22 .. v23}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setGravity(I)V

    .line 109
    const-string/jumbo v23, "image.mainpage_list_top"

    sget-object v24, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual/range {v22 .. v24}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setCustomBackgound(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 113
    new-instance v15, Lcom/iflytek/base/skin/customView/XImageView;

    invoke-direct {v15, v5}, Lcom/iflytek/base/skin/customView/XImageView;-><init>(Landroid/content/Context;)V

    .line 114
    .local v15, "pluginIcon":Lcom/iflytek/base/skin/customView/XImageView;
    sget-object v23, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Lcom/iflytek/base/skin/customView/XImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 115
    const-string/jumbo v23, "image.ic_offline"

    sget-object v24, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v15, v0, v1}, Lcom/iflytek/base/skin/customView/XImageView;->setCustomSrc(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 116
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v23, -0x2

    const/16 v24, -0x2

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-direct {v7, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 118
    .local v7, "iconParam":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v23, 0x10

    move/from16 v0, v23

    iput v0, v7, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 119
    move-object/from16 v0, v22

    invoke-virtual {v0, v15, v7}, Lcom/iflytek/base/skin/customView/XLinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 120
    invoke-virtual {v15}, Lcom/iflytek/base/skin/customView/XImageView;->getSpaceHelper()Lcom/iflytek/base/skin/customView/SpaceViewHelper;

    move-result-object v23

    const-string/jumbo v24, "30"

    sget-object v25, Lcom/iflytek/base/skin/space/SpaceType;->RIGHT:Lcom/iflytek/base/skin/space/SpaceType;

    invoke-virtual/range {v23 .. v25}, Lcom/iflytek/base/skin/customView/SpaceViewHelper;->setSkinMargin(Ljava/lang/String;Lcom/iflytek/base/skin/space/SpaceType;)V

    .line 122
    new-instance v13, Lcom/iflytek/base/skin/customView/XLinearLayout;

    invoke-direct {v13, v5}, Lcom/iflytek/base/skin/customView/XLinearLayout;-><init>(Landroid/content/Context;)V

    .line 123
    .local v13, "pluginDetailContainer":Lcom/iflytek/base/skin/customView/XLinearLayout;
    const/16 v23, 0x1

    move/from16 v0, v23

    invoke-virtual {v13, v0}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setOrientation(I)V

    .line 124
    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v23, -0x1

    const/16 v24, -0x2

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-direct {v14, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 126
    .local v14, "pluginDetailParam":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v23, 0x10

    move/from16 v0, v23

    iput v0, v14, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 127
    move-object/from16 v0, v22

    invoke-virtual {v0, v13, v14}, Lcom/iflytek/base/skin/customView/XLinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 129
    new-instance v18, Lcom/iflytek/base/skin/customView/XTextView;

    move-object/from16 v0, v18

    invoke-direct {v0, v5}, Lcom/iflytek/base/skin/customView/XTextView;-><init>(Landroid/content/Context;)V

    .line 130
    .local v18, "pluginName":Lcom/iflytek/base/skin/customView/XTextView;
    const-string/jumbo v23, "plugin_info_name"

    sget-object v24, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/base/skin/customView/XTextView;->setCustomStyle(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 131
    const-string/jumbo v23, "\u79bb\u7ebf\u8bed\u97f3\u5f15\u64ce"

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Lcom/iflytek/base/skin/customView/XLinearLayout;->addView(Landroid/view/View;)V

    .line 134
    new-instance v19, Lcom/iflytek/base/skin/customView/XTextView;

    move-object/from16 v0, v19

    invoke-direct {v0, v5}, Lcom/iflytek/base/skin/customView/XTextView;-><init>(Landroid/content/Context;)V

    .line 135
    .local v19, "pluginSize":Lcom/iflytek/base/skin/customView/XTextView;
    const-string/jumbo v23, "plugin_info_size"

    sget-object v24, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/base/skin/customView/XTextView;->setCustomStyle(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 136
    const-string/jumbo v23, "\u5927\u5c0f\uff1a 7.1M"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Lcom/iflytek/base/skin/customView/XLinearLayout;->addView(Landroid/view/View;)V

    .line 139
    new-instance v20, Lcom/iflytek/base/skin/customView/XImageView;

    move-object/from16 v0, v20

    invoke-direct {v0, v5}, Lcom/iflytek/base/skin/customView/XImageView;-><init>(Landroid/content/Context;)V

    .line 140
    .local v20, "pluginStatus":Lcom/iflytek/base/skin/customView/XImageView;
    sget-object v23, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 141
    const-string/jumbo v23, "image.ic_installed"

    sget-object v24, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/base/skin/customView/XImageView;->setCustomSrc(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 142
    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Lcom/iflytek/base/skin/customView/XLinearLayout;->addView(Landroid/view/View;)V

    .line 143
    invoke-virtual/range {v20 .. v20}, Lcom/iflytek/base/skin/customView/XImageView;->getSpaceHelper()Lcom/iflytek/base/skin/customView/SpaceViewHelper;

    move-result-object v23

    const-string/jumbo v24, "5"

    sget-object v25, Lcom/iflytek/base/skin/space/SpaceType;->TOP:Lcom/iflytek/base/skin/space/SpaceType;

    invoke-virtual/range {v23 .. v25}, Lcom/iflytek/base/skin/customView/SpaceViewHelper;->setSkinMargin(Ljava/lang/String;Lcom/iflytek/base/skin/space/SpaceType;)V

    .line 146
    new-instance v17, Lcom/iflytek/base/skin/customView/XLinearLayout;

    move-object/from16 v0, v17

    invoke-direct {v0, v5}, Lcom/iflytek/base/skin/customView/XLinearLayout;-><init>(Landroid/content/Context;)V

    .line 147
    .local v17, "pluginIntroduction":Lcom/iflytek/base/skin/customView/XLinearLayout;
    const/16 v23, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setOrientation(I)V

    .line 148
    const-string/jumbo v23, "image.mainpage_list_btm"

    sget-object v24, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setCustomBackgound(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 150
    new-instance v8, Lcom/iflytek/base/skin/customView/XTextView;

    invoke-direct {v8, v5}, Lcom/iflytek/base/skin/customView/XTextView;-><init>(Landroid/content/Context;)V

    .line 151
    .local v8, "introductionA":Lcom/iflytek/base/skin/customView/XTextView;
    const-string/jumbo v23, "plugin_info_introduction"

    sget-object v24, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v8, v0, v1}, Lcom/iflytek/base/skin/customView/XTextView;->setCustomStyle(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 153
    const-string/jumbo v23, "\u5b89\u88c5\u79bb\u7ebf\u8bed\u97f3\u5f15\u64ce\uff0c\u53ef\u4ee5\u5b9e\u73b0\u4ee5\u4e0b\u529f\u80fd\uff1a"

    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Lcom/iflytek/base/skin/customView/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Lcom/iflytek/base/skin/customView/XLinearLayout;->addView(Landroid/view/View;)V

    .line 156
    invoke-static {}, Lcom/iflytek/base/skin/ThemeManager;->getInstance()Lcom/iflytek/base/skin/ThemeManager;

    move-result-object v23

    const-string/jumbo v24, "image.bluetooth_dialog_green_ticker"

    sget-object v25, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual/range {v23 .. v25}, Lcom/iflytek/base/skin/ThemeManager;->getDrawable(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 158
    .local v6, "drawable":Landroid/graphics/drawable/Drawable;
    new-instance v9, Lcom/iflytek/base/skin/customView/XTextView;

    invoke-direct {v9, v5}, Lcom/iflytek/base/skin/customView/XTextView;-><init>(Landroid/content/Context;)V

    .line 159
    .local v9, "introductionB":Lcom/iflytek/base/skin/customView/XTextView;
    const-string/jumbo v23, "plugin_info_introduction"

    sget-object v24, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v9, v0, v1}, Lcom/iflytek/base/skin/customView/XTextView;->setCustomStyle(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 161
    const-string/jumbo v23, "\u672c\u5730\u64ad\u62a5\u3001\u66f4\u7701\u6d41\u91cf"

    move-object/from16 v0, v23

    invoke-virtual {v9, v0}, Lcom/iflytek/base/skin/customView/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v9, v6, v0, v1, v2}, Lcom/iflytek/base/skin/customView/XTextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 164
    const-wide/high16 v24, 0x4024000000000000L    # 10.0

    move-wide/from16 v0, v24

    invoke-static {v5, v0, v1}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v23

    move/from16 v0, v23

    invoke-virtual {v9, v0}, Lcom/iflytek/base/skin/customView/XTextView;->setCompoundDrawablePadding(I)V

    .line 165
    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Lcom/iflytek/base/skin/customView/XLinearLayout;->addView(Landroid/view/View;)V

    .line 166
    invoke-virtual {v9}, Lcom/iflytek/base/skin/customView/XTextView;->getSpaceHelper()Lcom/iflytek/base/skin/customView/SpaceViewHelper;

    move-result-object v23

    const-string/jumbo v24, "20"

    sget-object v25, Lcom/iflytek/base/skin/space/SpaceType;->TOP:Lcom/iflytek/base/skin/space/SpaceType;

    invoke-virtual/range {v23 .. v25}, Lcom/iflytek/base/skin/customView/SpaceViewHelper;->setSkinPadding(Ljava/lang/String;Lcom/iflytek/base/skin/space/SpaceType;)V

    .line 168
    new-instance v10, Lcom/iflytek/base/skin/customView/XTextView;

    invoke-direct {v10, v5}, Lcom/iflytek/base/skin/customView/XTextView;-><init>(Landroid/content/Context;)V

    .line 169
    .local v10, "introductionC":Lcom/iflytek/base/skin/customView/XTextView;
    const-string/jumbo v23, "plugin_info_introduction"

    sget-object v24, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v10, v0, v1}, Lcom/iflytek/base/skin/customView/XTextView;->setCustomStyle(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 171
    const-string/jumbo v23, "\u6765\u7535\u64ad\u62a5\u3001\u77ed\u4fe1\u64ad\u62a5"

    move-object/from16 v0, v23

    invoke-virtual {v10, v0}, Lcom/iflytek/base/skin/customView/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v10, v6, v0, v1, v2}, Lcom/iflytek/base/skin/customView/XTextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 174
    const-wide/high16 v24, 0x4024000000000000L    # 10.0

    move-wide/from16 v0, v24

    invoke-static {v5, v0, v1}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v23

    move/from16 v0, v23

    invoke-virtual {v10, v0}, Lcom/iflytek/base/skin/customView/XTextView;->setCompoundDrawablePadding(I)V

    .line 175
    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Lcom/iflytek/base/skin/customView/XLinearLayout;->addView(Landroid/view/View;)V

    .line 176
    invoke-virtual {v10}, Lcom/iflytek/base/skin/customView/XTextView;->getSpaceHelper()Lcom/iflytek/base/skin/customView/SpaceViewHelper;

    move-result-object v23

    const-string/jumbo v24, "20"

    sget-object v25, Lcom/iflytek/base/skin/space/SpaceType;->TOP:Lcom/iflytek/base/skin/space/SpaceType;

    invoke-virtual/range {v23 .. v25}, Lcom/iflytek/base/skin/customView/SpaceViewHelper;->setSkinPadding(Ljava/lang/String;Lcom/iflytek/base/skin/space/SpaceType;)V

    .line 178
    new-instance v11, Lcom/iflytek/base/skin/customView/XTextView;

    invoke-direct {v11, v5}, Lcom/iflytek/base/skin/customView/XTextView;-><init>(Landroid/content/Context;)V

    .line 179
    .local v11, "introductionD":Lcom/iflytek/base/skin/customView/XTextView;
    const-string/jumbo v23, "plugin_info_introduction"

    sget-object v24, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v11, v0, v1}, Lcom/iflytek/base/skin/customView/XTextView;->setCustomStyle(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 181
    const-string/jumbo v23, "\u65e0\u7f51\u7edc\u4e0b\u8bed\u97f3\u6253\u7535\u8bdd\u3001\u53d1\u77ed\u4fe1"

    move-object/from16 v0, v23

    invoke-virtual {v11, v0}, Lcom/iflytek/base/skin/customView/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v11, v6, v0, v1, v2}, Lcom/iflytek/base/skin/customView/XTextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 184
    const-wide/high16 v24, 0x4024000000000000L    # 10.0

    move-wide/from16 v0, v24

    invoke-static {v5, v0, v1}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v23

    move/from16 v0, v23

    invoke-virtual {v11, v0}, Lcom/iflytek/base/skin/customView/XTextView;->setCompoundDrawablePadding(I)V

    .line 185
    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Lcom/iflytek/base/skin/customView/XLinearLayout;->addView(Landroid/view/View;)V

    .line 186
    invoke-virtual {v11}, Lcom/iflytek/base/skin/customView/XTextView;->getSpaceHelper()Lcom/iflytek/base/skin/customView/SpaceViewHelper;

    move-result-object v23

    const-string/jumbo v24, "20"

    sget-object v25, Lcom/iflytek/base/skin/space/SpaceType;->TOP:Lcom/iflytek/base/skin/space/SpaceType;

    invoke-virtual/range {v23 .. v25}, Lcom/iflytek/base/skin/customView/SpaceViewHelper;->setSkinPadding(Ljava/lang/String;Lcom/iflytek/base/skin/space/SpaceType;)V

    .line 188
    new-instance v12, Lcom/iflytek/base/skin/customView/XTextView;

    invoke-direct {v12, v5}, Lcom/iflytek/base/skin/customView/XTextView;-><init>(Landroid/content/Context;)V

    .line 189
    .local v12, "introductionE":Lcom/iflytek/base/skin/customView/XTextView;
    const-string/jumbo v23, "plugin_info_introduction"

    sget-object v24, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v12, v0, v1}, Lcom/iflytek/base/skin/customView/XTextView;->setCustomStyle(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 191
    const-string/jumbo v23, "\u5168\u9762\u63d0\u5347\u6253\u7535\u8bdd\u3001\u53d1\u77ed\u4fe1\u901f\u5ea6"

    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Lcom/iflytek/base/skin/customView/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v12, v6, v0, v1, v2}, Lcom/iflytek/base/skin/customView/XTextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 194
    const-wide/high16 v24, 0x4024000000000000L    # 10.0

    move-wide/from16 v0, v24

    invoke-static {v5, v0, v1}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v23

    move/from16 v0, v23

    invoke-virtual {v12, v0}, Lcom/iflytek/base/skin/customView/XTextView;->setCompoundDrawablePadding(I)V

    .line 195
    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Lcom/iflytek/base/skin/customView/XLinearLayout;->addView(Landroid/view/View;)V

    .line 196
    invoke-virtual {v12}, Lcom/iflytek/base/skin/customView/XTextView;->getSpaceHelper()Lcom/iflytek/base/skin/customView/SpaceViewHelper;

    move-result-object v23

    const-string/jumbo v24, "20"

    sget-object v25, Lcom/iflytek/base/skin/space/SpaceType;->TOP:Lcom/iflytek/base/skin/space/SpaceType;

    invoke-virtual/range {v23 .. v25}, Lcom/iflytek/base/skin/customView/SpaceViewHelper;->setSkinPadding(Ljava/lang/String;Lcom/iflytek/base/skin/space/SpaceType;)V

    .line 198
    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XLinearLayout;->addView(Landroid/view/View;)V

    .line 199
    invoke-virtual/range {v22 .. v22}, Lcom/iflytek/base/skin/customView/XLinearLayout;->getSpaceHelper()Lcom/iflytek/base/skin/customView/SpaceViewGroupHelper;

    move-result-object v23

    const-string/jumbo v24, "33"

    const-string/jumbo v25, "36"

    const-string/jumbo v26, "33"

    const-string/jumbo v27, "30"

    invoke-virtual/range {v23 .. v27}, Lcom/iflytek/base/skin/customView/SpaceViewGroupHelper;->setSkinPaddings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    invoke-virtual/range {v16 .. v17}, Lcom/iflytek/base/skin/customView/XLinearLayout;->addView(Landroid/view/View;)V

    .line 201
    invoke-virtual/range {v17 .. v17}, Lcom/iflytek/base/skin/customView/XLinearLayout;->getSpaceHelper()Lcom/iflytek/base/skin/customView/SpaceViewGroupHelper;

    move-result-object v23

    const-string/jumbo v24, "33"

    const-string/jumbo v25, "30"

    const-string/jumbo v26, "33"

    const-string/jumbo v27, "40"

    invoke-virtual/range {v23 .. v27}, Lcom/iflytek/base/skin/customView/SpaceViewGroupHelper;->setSkinPaddings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    new-instance v21, Lcom/iflytek/base/skin/customView/XTextView;

    move-object/from16 v0, v21

    invoke-direct {v0, v5}, Lcom/iflytek/base/skin/customView/XTextView;-><init>(Landroid/content/Context;)V

    .line 206
    .local v21, "pluginUninstallBtn":Lcom/iflytek/base/skin/customView/XTextView;
    const/16 v23, 0x11

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XTextView;->setGravity(I)V

    .line 207
    const-string/jumbo v23, "\u8bed\u97f3\u64ad\u62a5\u8bbe\u7f6e"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 208
    const-string/jumbo v23, "plugin_uninstall_btn"

    sget-object v24, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/base/skin/customView/XTextView;->setCustomStyle(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 210
    const-string/jumbo v23, "statelist.btn_enter_call_sms_setting"

    sget-object v24, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/base/skin/customView/XTextView;->setCustomBackgound(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 212
    sget-object v23, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string/jumbo v24, "M812C"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_0

    .line 213
    const/16 v23, 0x8

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XTextView;->setVisibility(I)V

    .line 215
    :cond_0
    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Lcom/iflytek/base/skin/customView/XLinearLayout;->addView(Landroid/view/View;)V

    .line 216
    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Lcom/iflytek/base/skin/customView/XLinearLayout;->addView(Landroid/view/View;)V

    .line 217
    invoke-virtual/range {v21 .. v21}, Lcom/iflytek/base/skin/customView/XTextView;->getSpaceHelper()Lcom/iflytek/base/skin/customView/SpaceViewHelper;

    move-result-object v23

    const-string/jumbo v24, "106"

    invoke-virtual/range {v23 .. v24}, Lcom/iflytek/base/skin/customView/SpaceViewHelper;->setSkinHeight(Ljava/lang/String;)V

    .line 218
    invoke-virtual/range {v21 .. v21}, Lcom/iflytek/base/skin/customView/XTextView;->getSpaceHelper()Lcom/iflytek/base/skin/customView/SpaceViewHelper;

    move-result-object v23

    const-string/jumbo v24, "14"

    sget-object v25, Lcom/iflytek/base/skin/space/SpaceType;->TOP:Lcom/iflytek/base/skin/space/SpaceType;

    invoke-virtual/range {v23 .. v25}, Lcom/iflytek/base/skin/customView/SpaceViewHelper;->setSkinMargin(Ljava/lang/String;Lcom/iflytek/base/skin/space/SpaceType;)V

    .line 220
    new-instance v23, Lcom/iflytek/viafly/ui/PluginUninstallFragment$1;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5}, Lcom/iflytek/viafly/ui/PluginUninstallFragment$1;-><init>(Lcom/iflytek/viafly/ui/PluginUninstallFragment;Landroid/content/Context;)V

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 230
    return-object v4
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 44
    invoke-super {p0, p1}, Lcom/iflytek/yd/ui/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 47
    return-void
.end method

.method public bridge synthetic onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0, p1, p2, p3}, Lcom/iflytek/viafly/ui/PluginUninstallFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Lcom/iflytek/base/skin/customView/XRelativeLayout;

    move-result-object v0

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Lcom/iflytek/base/skin/customView/XRelativeLayout;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 52
    invoke-super {p0, p1, p2, p3}, Lcom/iflytek/yd/ui/BaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Lcom/iflytek/base/skin/customView/XRelativeLayout;

    move-result-object v1

    .line 54
    .local v1, "rootView":Lcom/iflytek/base/skin/customView/XRelativeLayout;
    invoke-direct {p0}, Lcom/iflytek/viafly/ui/PluginUninstallFragment;->getContentView()Landroid/view/View;

    move-result-object v0

    .line 55
    .local v0, "contentView":Landroid/view/View;
    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/ui/PluginUninstallFragment;->addContentView(Landroid/view/View;)V

    .line 56
    return-object v1
.end method

.method public onDetach()V
    .locals 0

    .prologue
    .line 235
    invoke-super {p0}, Lcom/iflytek/yd/ui/BaseFragment;->onDetach()V

    .line 236
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, -0x2

    .line 61
    invoke-super {p0, p1, p2}, Lcom/iflytek/yd/ui/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 62
    const-string/jumbo v2, "\u79bb\u7ebf\u8bed\u97f3\u5f15\u64ce"

    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/ui/PluginUninstallFragment;->setTitleText(Ljava/lang/CharSequence;)V

    .line 63
    const-string/jumbo v2, "style_settings_title_new"

    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/ui/PluginUninstallFragment;->setTitleStyle(Ljava/lang/String;)V

    .line 64
    const-string/jumbo v2, "statelist.fluepage_title_back_btn_states"

    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/ui/PluginUninstallFragment;->setBackBtnResource(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/PluginUninstallFragment;->getTitleBar()Landroid/widget/RelativeLayout;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 66
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/PluginUninstallFragment;->getTitleBar()Landroid/widget/RelativeLayout;

    move-result-object v2

    const v3, 0x7f0200d6

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 69
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/PluginUninstallFragment;->getTitleBar()Landroid/widget/RelativeLayout;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 70
    .local v1, "titleView":Landroid/widget/TextView;
    if-eqz v1, :cond_0

    .line 71
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 72
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 73
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 76
    .end local v0    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/PluginUninstallFragment;->getTitleBar()Landroid/widget/RelativeLayout;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 77
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/PluginUninstallFragment;->getTitleBar()Landroid/widget/RelativeLayout;

    move-result-object v2

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/PluginUninstallFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    const/16 v6, 0x60

    invoke-static {v5, v6}, Lazk;->a(Landroid/content/Context;I)I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 79
    .end local v1    # "titleView":Landroid/widget/TextView;
    :cond_1
    return-void
.end method
