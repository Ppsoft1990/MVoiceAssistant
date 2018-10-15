.class Lcom/iflytek/base/skin/customView/XSeekBar$SeekBarDrawer;
.super Lcom/iflytek/base/skin/customView/ViewDrawer;
.source "XSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/base/skin/customView/XSeekBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SeekBarDrawer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/iflytek/base/skin/customView/ViewDrawer",
        "<",
        "Landroid/widget/SeekBar;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/base/skin/customView/XSeekBar;


# direct methods
.method constructor <init>(Lcom/iflytek/base/skin/customView/XSeekBar;Landroid/widget/SeekBar;Landroid/util/AttributeSet;Ljava/lang/String;)V
    .locals 0
    .param p2, "view"    # Landroid/widget/SeekBar;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "pluginId"    # Ljava/lang/String;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/iflytek/base/skin/customView/XSeekBar$SeekBarDrawer;->this$0:Lcom/iflytek/base/skin/customView/XSeekBar;

    .line 65
    invoke-direct {p0, p2, p3, p4}, Lcom/iflytek/base/skin/customView/ViewDrawer;-><init>(Landroid/view/View;Landroid/util/AttributeSet;Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method private setHorizontalDrawable(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V
    .locals 7
    .param p1, "colorArrayString"    # Ljava/lang/String;
    .param p2, "orientation"    # Lcom/iflytek/base/skin/Orientation;

    .prologue
    .line 89
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    .line 110
    :cond_0
    :goto_0
    return-void

    .line 92
    :cond_1
    const/4 v1, 0x0

    .line 94
    .local v1, "colorArrayName":[Ljava/lang/String;
    :try_start_0
    const-string/jumbo v5, ","

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 99
    if-eqz v1, :cond_0

    .line 100
    array-length v5, v1

    new-array v0, v5, [I

    .line 101
    .local v0, "colorArray":[I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    array-length v5, v1

    if-ge v4, v5, :cond_2

    .line 102
    invoke-virtual {p0}, Lcom/iflytek/base/skin/customView/XSeekBar$SeekBarDrawer;->getThemeManager()Lcom/iflytek/base/skin/IThemeManager;

    move-result-object v5

    aget-object v6, v1, v4

    invoke-interface {v5, v6, p2}, Lcom/iflytek/base/skin/IThemeManager;->getColor(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)I

    move-result v5

    aput v5, v0, v4

    .line 101
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 95
    .end local v0    # "colorArray":[I
    .end local v4    # "i":I
    :catch_0
    move-exception v3

    .line 96
    .local v3, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "XSeekBar"

    const-string/jumbo v6, "setHorizontalDrawable()"

    invoke-static {v5, v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 106
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v0    # "colorArray":[I
    .restart local v4    # "i":I
    :cond_2
    iget-object v5, p0, Lcom/iflytek/base/skin/customView/XSeekBar$SeekBarDrawer;->this$0:Lcom/iflytek/base/skin/customView/XSeekBar;

    invoke-virtual {v5}, Lcom/iflytek/base/skin/customView/XSeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    const/4 v6, -0x1

    invoke-direct {p0, v5, v0, v6}, Lcom/iflytek/base/skin/customView/XSeekBar$SeekBarDrawer;->tileify(Landroid/graphics/drawable/Drawable;[II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 108
    .local v2, "drawable":Landroid/graphics/drawable/Drawable;
    iget-object v5, p0, Lcom/iflytek/base/skin/customView/XSeekBar$SeekBarDrawer;->this$0:Lcom/iflytek/base/skin/customView/XSeekBar;

    invoke-virtual {v5, v2}, Lcom/iflytek/base/skin/customView/XSeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private tileify(Landroid/graphics/drawable/Drawable;[II)Landroid/graphics/drawable/Drawable;
    .locals 18
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "colorArray"    # [I
    .param p3, "index"    # I

    .prologue
    .line 115
    move-object/from16 v0, p1

    instance-of v14, v0, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v14, :cond_1

    move-object/from16 v5, p1

    .line 116
    check-cast v5, Landroid/graphics/drawable/LayerDrawable;

    .line 117
    .local v5, "background":Landroid/graphics/drawable/LayerDrawable;
    invoke-virtual {v5}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v4

    .line 118
    .local v4, "N":I
    new-array v10, v4, [Landroid/graphics/drawable/Drawable;

    .line 120
    .local v10, "outDrawables":[Landroid/graphics/drawable/Drawable;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v4, :cond_0

    .line 121
    move/from16 p3, v7

    .line 122
    invoke-virtual {v5, v7}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 123
    .local v6, "db":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v0, v6, v1, v2}, Lcom/iflytek/base/skin/customView/XSeekBar$SeekBarDrawer;->tileify(Landroid/graphics/drawable/Drawable;[II)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    aput-object v14, v10, v7

    .line 120
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 126
    .end local v6    # "db":Landroid/graphics/drawable/Drawable;
    :cond_0
    new-instance v9, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v9, v10}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 128
    .local v9, "newBg":Landroid/graphics/drawable/LayerDrawable;
    const/4 v7, 0x0

    :goto_1
    if-ge v7, v4, :cond_3

    .line 129
    invoke-virtual {v5, v7}, Landroid/graphics/drawable/LayerDrawable;->getId(I)I

    move-result v14

    invoke-virtual {v9, v7, v14}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    .line 128
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 134
    .end local v4    # "N":I
    .end local v5    # "background":Landroid/graphics/drawable/LayerDrawable;
    .end local v7    # "i":I
    .end local v9    # "newBg":Landroid/graphics/drawable/LayerDrawable;
    .end local v10    # "outDrawables":[Landroid/graphics/drawable/Drawable;
    :cond_1
    move-object/from16 v0, p1

    instance-of v14, v0, Landroid/graphics/drawable/ClipDrawable;

    if-eqz v14, :cond_4

    .line 136
    move-object/from16 v0, p2

    array-length v14, v0

    move/from16 v0, p3

    if-ge v0, v14, :cond_2

    if-ltz p3, :cond_2

    .line 138
    new-instance v8, Landroid/graphics/drawable/GradientDrawable;

    sget-object v14, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v15, 0x3

    new-array v15, v15, [I

    const/16 v16, 0x0

    aget v17, p2, p3

    aput v17, v15, v16

    const/16 v16, 0x1

    aget v17, p2, p3

    aput v17, v15, v16

    const/16 v16, 0x2

    aget v17, p2, p3

    aput v17, v15, v16

    invoke-direct {v8, v14, v15}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 142
    .local v8, "mDrawable":Landroid/graphics/drawable/GradientDrawable;
    const/4 v14, 0x0

    const/high16 v15, 0x3f400000    # 0.75f

    invoke-virtual {v8, v14, v15}, Landroid/graphics/drawable/GradientDrawable;->setGradientCenter(FF)V

    .line 143
    const-wide/high16 v14, 0x4014000000000000L    # 5.0

    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v14

    const-wide/high16 v16, 0x404e000000000000L    # 60.0

    mul-double v14, v14, v16

    double-to-float v14, v14

    invoke-virtual {v8, v14}, Landroid/graphics/drawable/GradientDrawable;->setGradientRadius(F)V

    .line 144
    const/4 v14, 0x0

    invoke-virtual {v8, v14}, Landroid/graphics/drawable/GradientDrawable;->setGradientType(I)V

    .line 145
    const/16 v14, 0x8

    new-array v14, v14, [F

    fill-array-data v14, :array_0

    .line 146
    invoke-virtual {v8, v14}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 148
    new-instance v12, Landroid/graphics/drawable/ClipDrawable;

    const/4 v14, 0x3

    const/4 v15, 0x1

    invoke-direct {v12, v8, v14, v15}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    .line 150
    .local v12, "proDrawable":Landroid/graphics/drawable/ClipDrawable;
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->getLevel()I

    move-result v14

    invoke-virtual {v12, v14}, Landroid/graphics/drawable/ClipDrawable;->setLevel(I)Z

    .line 151
    move-object/from16 p1, v12

    .end local v8    # "mDrawable":Landroid/graphics/drawable/GradientDrawable;
    .end local v12    # "proDrawable":Landroid/graphics/drawable/ClipDrawable;
    :cond_2
    move-object/from16 v9, p1

    .line 180
    :cond_3
    :goto_2
    return-object v9

    .line 156
    :cond_4
    move-object/from16 v0, p1

    instance-of v14, v0, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v14, :cond_6

    .line 157
    move-object/from16 v0, p2

    array-length v14, v0

    move/from16 v0, p3

    if-ge v0, v14, :cond_5

    if-ltz p3, :cond_5

    .line 158
    new-instance v8, Landroid/graphics/drawable/GradientDrawable;

    sget-object v14, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v15, 0x3

    new-array v15, v15, [I

    const/16 v16, 0x0

    aget v17, p2, p3

    aput v17, v15, v16

    const/16 v16, 0x1

    aget v17, p2, p3

    aput v17, v15, v16

    const/16 v16, 0x2

    aget v17, p2, p3

    aput v17, v15, v16

    invoke-direct {v8, v14, v15}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 162
    .restart local v8    # "mDrawable":Landroid/graphics/drawable/GradientDrawable;
    const/4 v14, 0x0

    const/high16 v15, 0x3f400000    # 0.75f

    invoke-virtual {v8, v14, v15}, Landroid/graphics/drawable/GradientDrawable;->setGradientCenter(FF)V

    .line 163
    const-wide/high16 v14, 0x4014000000000000L    # 5.0

    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v14

    const-wide/high16 v16, 0x404e000000000000L    # 60.0

    mul-double v14, v14, v16

    double-to-float v14, v14

    invoke-virtual {v8, v14}, Landroid/graphics/drawable/GradientDrawable;->setGradientRadius(F)V

    .line 164
    const/4 v14, 0x0

    invoke-virtual {v8, v14}, Landroid/graphics/drawable/GradientDrawable;->setGradientType(I)V

    .line 165
    const/16 v14, 0x8

    new-array v14, v14, [F

    fill-array-data v14, :array_1

    .line 166
    invoke-virtual {v8, v14}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 167
    move-object/from16 p1, v8

    .end local v8    # "mDrawable":Landroid/graphics/drawable/GradientDrawable;
    :cond_5
    move-object/from16 v9, p1

    .line 169
    goto :goto_2

    .line 170
    :cond_6
    move-object/from16 v0, p1

    instance-of v14, v0, Landroid/graphics/drawable/NinePatchDrawable;

    if-eqz v14, :cond_8

    .line 171
    move-object/from16 v0, p2

    array-length v14, v0

    move/from16 v0, p3

    if-ge v0, v14, :cond_7

    if-ltz p3, :cond_7

    move-object/from16 v13, p1

    .line 173
    check-cast v13, Landroid/graphics/drawable/NinePatchDrawable;

    .line 174
    .local v13, "testdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    invoke-virtual {v13}, Landroid/graphics/drawable/NinePatchDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v11

    .line 175
    .local v11, "paint":Landroid/graphics/Paint;
    aget v14, p2, p3

    invoke-virtual {v11, v14}, Landroid/graphics/Paint;->setColor(I)V

    .end local v11    # "paint":Landroid/graphics/Paint;
    .end local v13    # "testdrawable":Landroid/graphics/drawable/NinePatchDrawable;
    :cond_7
    move-object/from16 v9, p1

    .line 177
    goto :goto_2

    :cond_8
    move-object/from16 v9, p1

    .line 180
    goto :goto_2

    .line 145
    :array_0
    .array-data 4
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
    .end array-data

    .line 165
    :array_1
    .array-data 4
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
    .end array-data
.end method


# virtual methods
.method appendAttributeSet(Landroid/content/res/TypedArray;Lcom/iflytek/base/skin/customView/XAttributeSet;)V
    .locals 1
    .param p1, "typedArray"    # Landroid/content/res/TypedArray;
    .param p2, "attributeSet"    # Lcom/iflytek/base/skin/customView/XAttributeSet;

    .prologue
    .line 70
    invoke-super {p0, p1, p2}, Lcom/iflytek/base/skin/customView/ViewDrawer;->appendAttributeSet(Landroid/content/res/TypedArray;Lcom/iflytek/base/skin/customView/XAttributeSet;)V

    .line 72
    const/16 v0, 0x12

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/iflytek/base/skin/customView/XAttributeSet;->setColorArray(Ljava/lang/String;)V

    .line 73
    const/16 v0, 0x1e

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/iflytek/base/skin/customView/XAttributeSet;->setThumb(Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method bridge synthetic freshSkin(Landroid/view/View;Lcom/iflytek/base/skin/customView/XAttributeSet;)V
    .locals 0

    .prologue
    .line 62
    check-cast p1, Landroid/widget/SeekBar;

    invoke-virtual {p0, p1, p2}, Lcom/iflytek/base/skin/customView/XSeekBar$SeekBarDrawer;->freshSkin(Landroid/widget/SeekBar;Lcom/iflytek/base/skin/customView/XAttributeSet;)V

    return-void
.end method

.method freshSkin(Landroid/widget/SeekBar;Lcom/iflytek/base/skin/customView/XAttributeSet;)V
    .locals 4
    .param p1, "view"    # Landroid/widget/SeekBar;
    .param p2, "attributeSet"    # Lcom/iflytek/base/skin/customView/XAttributeSet;

    .prologue
    .line 78
    invoke-super {p0, p1, p2}, Lcom/iflytek/base/skin/customView/ViewDrawer;->freshSkin(Landroid/view/View;Lcom/iflytek/base/skin/customView/XAttributeSet;)V

    .line 80
    invoke-virtual {p0}, Lcom/iflytek/base/skin/customView/XSeekBar$SeekBarDrawer;->getThemeManager()Lcom/iflytek/base/skin/IThemeManager;

    move-result-object v1

    invoke-virtual {p2}, Lcom/iflytek/base/skin/customView/XAttributeSet;->getThumb()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/iflytek/base/skin/customView/XAttributeSet;->getOrientation()Lcom/iflytek/base/skin/Orientation;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/iflytek/base/skin/IThemeManager;->getDrawable(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 81
    .local v0, "thumb":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 82
    iget-object v1, p0, Lcom/iflytek/base/skin/customView/XSeekBar$SeekBarDrawer;->this$0:Lcom/iflytek/base/skin/customView/XSeekBar;

    invoke-virtual {v1, v0}, Lcom/iflytek/base/skin/customView/XSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 85
    :cond_0
    invoke-virtual {p2}, Lcom/iflytek/base/skin/customView/XAttributeSet;->getColorArray()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/iflytek/base/skin/customView/XAttributeSet;->getOrientation()Lcom/iflytek/base/skin/Orientation;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/iflytek/base/skin/customView/XSeekBar$SeekBarDrawer;->setHorizontalDrawable(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 86
    return-void
.end method
