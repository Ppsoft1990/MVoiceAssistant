.class public final Lbdu;
.super Ljava/lang/Object;
.source "ImageSizeUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbdu$1;
    }
.end annotation


# direct methods
.method public static a(Lbde;Lbde;Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;Z)I
    .locals 9
    .param p0, "srcSize"    # Lbde;
    .param p1, "targetSize"    # Lbde;
    .param p2, "viewScaleType"    # Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;
    .param p3, "powerOf2Scale"    # Z

    .prologue
    .line 113
    invoke-virtual {p0}, Lbde;->a()I

    move-result v3

    .line 114
    .local v3, "srcWidth":I
    invoke-virtual {p0}, Lbde;->b()I

    move-result v2

    .line 115
    .local v2, "srcHeight":I
    invoke-virtual {p1}, Lbde;->a()I

    move-result v5

    .line 116
    .local v5, "targetWidth":I
    invoke-virtual {p1}, Lbde;->b()I

    move-result v4

    .line 118
    .local v4, "targetHeight":I
    const/4 v1, 0x1

    .line 120
    .local v1, "scale":I
    div-int v6, v3, v5

    .line 121
    .local v6, "widthScale":I
    div-int v0, v2, v4

    .line 123
    .local v0, "heightScale":I
    sget-object v7, Lbdu$1;->a:[I

    invoke-virtual {p2}, Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    .line 148
    :cond_0
    :goto_0
    const/4 v7, 0x1

    if-ge v1, v7, :cond_1

    .line 149
    const/4 v1, 0x1

    .line 152
    :cond_1
    return v1

    .line 125
    :pswitch_0
    if-eqz p3, :cond_3

    .line 126
    :goto_1
    div-int/lit8 v7, v3, 0x2

    if-ge v7, v5, :cond_2

    div-int/lit8 v7, v2, 0x2

    if-lt v7, v4, :cond_0

    .line 127
    :cond_2
    div-int/lit8 v3, v3, 0x2

    .line 128
    div-int/lit8 v2, v2, 0x2

    .line 129
    mul-int/lit8 v1, v1, 0x2

    goto :goto_1

    .line 132
    :cond_3
    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 134
    goto :goto_0

    .line 136
    :pswitch_1
    if-eqz p3, :cond_4

    .line 137
    :goto_2
    div-int/lit8 v7, v3, 0x2

    if-lt v7, v5, :cond_0

    div-int/lit8 v7, v2, 0x2

    if-lt v7, v4, :cond_0

    .line 138
    div-int/lit8 v3, v3, 0x2

    .line 139
    div-int/lit8 v2, v2, 0x2

    .line 140
    mul-int/lit8 v1, v1, 0x2

    goto :goto_2

    .line 143
    :cond_4
    invoke-static {v6, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_0

    .line 123
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static a(Ljava/lang/Object;Ljava/lang/String;)I
    .locals 5
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 71
    const/4 v3, 0x0

    .line 73
    .local v3, "value":I
    :try_start_0
    const-class v4, Landroid/widget/ImageView;

    invoke-virtual {v4, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 74
    .local v1, "field":Ljava/lang/reflect/Field;
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 75
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 76
    .local v2, "fieldValue":I
    if-lez v2, :cond_0

    const v4, 0x7fffffff

    if-ge v2, v4, :cond_0

    .line 77
    move v3, v2

    .line 82
    .end local v1    # "field":Ljava/lang/reflect/Field;
    .end local v2    # "fieldValue":I
    :cond_0
    :goto_0
    return v3

    .line 79
    :catch_0
    move-exception v0

    .line 80
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lbdw;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static a(Landroid/widget/ImageView;II)Lbde;
    .locals 6
    .param p0, "imageView"    # Landroid/widget/ImageView;
    .param p1, "maxImageWidth"    # I
    .param p2, "maxImageHeight"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v5, -0x2

    .line 52
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 54
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 55
    .local v2, "params":Landroid/view/ViewGroup$LayoutParams;
    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v4, v5, :cond_8

    move v3, v1

    .line 56
    .local v3, "width":I
    :goto_0
    if-gtz v3, :cond_0

    iget v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 57
    :cond_0
    if-gtz v3, :cond_1

    const-string/jumbo v4, "mMaxWidth"

    invoke-static {p0, v4}, Lbdu;->a(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v3

    .line 58
    :cond_1
    if-gtz v3, :cond_2

    move v3, p1

    .line 59
    :cond_2
    if-gtz v3, :cond_3

    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 61
    :cond_3
    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v4, v5, :cond_9

    .line 62
    .local v1, "height":I
    :goto_1
    if-gtz v1, :cond_4

    iget v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 63
    :cond_4
    if-gtz v1, :cond_5

    const-string/jumbo v4, "mMaxHeight"

    invoke-static {p0, v4}, Lbdu;->a(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v1

    .line 64
    :cond_5
    if-gtz v1, :cond_6

    move v1, p2

    .line 65
    :cond_6
    if-gtz v1, :cond_7

    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 67
    :cond_7
    new-instance v4, Lbde;

    invoke-direct {v4, v3, v1}, Lbde;-><init>(II)V

    return-object v4

    .line 55
    .end local v1    # "height":I
    .end local v3    # "width":I
    :cond_8
    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    goto :goto_0

    .line 61
    .restart local v3    # "width":I
    :cond_9
    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    goto :goto_1
.end method

.method public static b(Lbde;Lbde;Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;Z)F
    .locals 11
    .param p0, "srcSize"    # Lbde;
    .param p1, "targetSize"    # Lbde;
    .param p2, "viewScaleType"    # Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;
    .param p3, "stretch"    # Z

    .prologue
    .line 178
    invoke-virtual {p0}, Lbde;->a()I

    move-result v5

    .line 179
    .local v5, "srcWidth":I
    invoke-virtual {p0}, Lbde;->b()I

    move-result v4

    .line 180
    .local v4, "srcHeight":I
    invoke-virtual {p1}, Lbde;->a()I

    move-result v7

    .line 181
    .local v7, "targetWidth":I
    invoke-virtual {p1}, Lbde;->b()I

    move-result v6

    .line 183
    .local v6, "targetHeight":I
    int-to-float v9, v5

    int-to-float v10, v7

    div-float v8, v9, v10

    .line 184
    .local v8, "widthScale":F
    int-to-float v9, v4

    int-to-float v10, v6

    div-float v2, v9, v10

    .line 188
    .local v2, "heightScale":F
    sget-object v9, Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;->FIT_INSIDE:Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;

    if-ne p2, v9, :cond_0

    cmpl-float v9, v8, v2

    if-gez v9, :cond_1

    :cond_0
    sget-object v9, Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;->CROP:Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;

    if-ne p2, v9, :cond_5

    cmpg-float v9, v8, v2

    if-gez v9, :cond_5

    .line 189
    :cond_1
    move v1, v7

    .line 190
    .local v1, "destWidth":I
    int-to-float v9, v4

    div-float/2addr v9, v8

    float-to-int v0, v9

    .line 196
    .local v0, "destHeight":I
    :goto_0
    const/high16 v3, 0x3f800000    # 1.0f

    .line 197
    .local v3, "scale":F
    if-nez p3, :cond_2

    if-ge v1, v5, :cond_2

    if-lt v0, v4, :cond_3

    :cond_2
    if-eqz p3, :cond_4

    if-eq v1, v5, :cond_4

    if-eq v0, v4, :cond_4

    .line 198
    :cond_3
    int-to-float v9, v1

    int-to-float v10, v5

    div-float v3, v9, v10

    .line 201
    :cond_4
    return v3

    .line 192
    .end local v0    # "destHeight":I
    .end local v1    # "destWidth":I
    .end local v3    # "scale":F
    :cond_5
    int-to-float v9, v5

    div-float/2addr v9, v2

    float-to-int v1, v9

    .line 193
    .restart local v1    # "destWidth":I
    move v0, v6

    .restart local v0    # "destHeight":I
    goto :goto_0
.end method
