.class public Lzw;
.super Ljava/lang/Object;
.source "ContactForwardSendShare.java"

# interfaces
.implements Lcom/iflytek/mmp/core/componentsManager/Components;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-string/jumbo v0, "\u201c\u628a\u67d0\u67d0\u7684\u53f7\u7801\u53d1\u7ed9\u67d0\u67d0\u201d\u5c31\u80fd\u8bed\u97f3\u8f6c\u53d1\u8054\u7cfb\u4eba\u4e86\uff0c\u4e0b\u8f7d\u54aa\u5495\u7075\u7280\u8bd5\u4e00\u4e0b\u5427\u3002http://lingxi.voicecloud.cn/wap/index.aspx?n=16010298"

    iput-object v0, p0, Lzw;->a:Ljava/lang/String;

    .line 35
    iput-object p1, p0, Lzw;->c:Landroid/content/Context;

    .line 36
    return-void
.end method

.method private a()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 53
    :try_start_0
    invoke-static {}, Lcom/iflytek/base/skin/ThemeManager;->getInstance()Lcom/iflytek/base/skin/ThemeManager;

    move-result-object v4

    const-string/jumbo v5, "image.contact_share_logo_text"

    sget-object v6, Lcom/iflytek/base/skin/Orientation;->LANDSCAPE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v4, v5, v6}, Lcom/iflytek/base/skin/ThemeManager;->getDrawable(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 54
    .local v3, "waterBitmap":Landroid/graphics/Bitmap;
    const/high16 v4, 0x43f00000    # 480.0f

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float v2, v4, v5

    .line 57
    .local v2, "scale":F
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lnk;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "/lxshare.png"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lzw;->b:Ljava/lang/String;

    .line 58
    iget-object v4, p0, Lzw;->b:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/iflytek/yd/util/BitmapHelper;->savePic(Landroid/graphics/Bitmap;Ljava/lang/String;)Z

    move-result v1

    .line 59
    .local v1, "isSaved":Z
    if-nez v1, :cond_0

    .line 60
    iget-object v4, p0, Lzw;->c:Landroid/content/Context;

    const-string/jumbo v5, "\u5206\u4eab\u5931\u8d25"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    .end local v1    # "isSaved":Z
    .end local v2    # "scale":F
    .end local v3    # "waterBitmap":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-void

    .line 66
    :catch_0
    move-exception v0

    .line 67
    .local v0, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lzw;->c:Landroid/content/Context;

    const-string/jumbo v5, "\u5206\u4eab\u5931\u8d25"

    invoke-static {v4, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method


# virtual methods
.method public exec(Ljava/lang/String;Ljava/lang/String;)Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;
    .locals 6
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "args"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 78
    invoke-static {}, Lhl;->o()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 79
    .local v0, "mIsAvaiBle":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 80
    invoke-direct {p0}, Lzw;->a()V

    .line 82
    :cond_0
    const-string/jumbo v1, "shareToWeiXin"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 83
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 84
    iget-object v1, p0, Lzw;->c:Landroid/content/Context;

    iget-object v2, p0, Lzw;->b:Ljava/lang/String;

    const-string/jumbo v3, "com.tencent.mm"

    invoke-static {v1, v2, v3, v5}, Lcom/iflytek/yd/util/Share;->shareToApplication(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    :cond_1
    :goto_0
    return-object v5

    .line 86
    :cond_2
    iget-object v1, p0, Lzw;->c:Landroid/content/Context;

    const-string/jumbo v2, "com.tencent.mm"

    iget-object v3, p0, Lzw;->a:Ljava/lang/String;

    invoke-static {v1, v5, v2, v3}, Lcom/iflytek/yd/util/Share;->shareToApplication(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 88
    :cond_3
    const-string/jumbo v1, "shareToTimeLine"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 89
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 90
    iget-object v1, p0, Lzw;->c:Landroid/content/Context;

    iget-object v2, p0, Lzw;->b:Ljava/lang/String;

    const-string/jumbo v3, "com.tencent.mm"

    iget-object v4, p0, Lzw;->a:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lcom/iflytek/yd/util/Share;->shareToTimeLine(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 92
    :cond_4
    iget-object v1, p0, Lzw;->c:Landroid/content/Context;

    const-string/jumbo v2, "\u5b58\u50a8\u5361\u5df2\u62d4\u51fa,\u5fae\u4fe1\u670b\u53cb\u5708\u5206\u4eab\u529f\u80fd\u4e0d\u53ef\u7528"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 94
    :cond_5
    const-string/jumbo v1, "shareToWeiBo"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 95
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 96
    iget-object v1, p0, Lzw;->c:Landroid/content/Context;

    iget-object v2, p0, Lzw;->b:Ljava/lang/String;

    const-string/jumbo v3, "com.sina.weibo"

    iget-object v4, p0, Lzw;->a:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lcom/iflytek/yd/util/Share;->shareToApplication(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 98
    :cond_6
    iget-object v1, p0, Lzw;->c:Landroid/content/Context;

    const-string/jumbo v2, "com.sina.weibo"

    iget-object v3, p0, Lzw;->a:Ljava/lang/String;

    invoke-static {v1, v5, v2, v3}, Lcom/iflytek/yd/util/Share;->shareToApplication(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 100
    :cond_7
    const-string/jumbo v1, "shareToQQZone"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 101
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 102
    iget-object v1, p0, Lzw;->c:Landroid/content/Context;

    iget-object v2, p0, Lzw;->b:Ljava/lang/String;

    const-string/jumbo v3, "com.qzone"

    iget-object v4, p0, Lzw;->a:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lcom/iflytek/yd/util/Share;->shareToApplication(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 104
    :cond_8
    iget-object v1, p0, Lzw;->c:Landroid/content/Context;

    const-string/jumbo v2, "com.qzone"

    iget-object v3, p0, Lzw;->a:Ljava/lang/String;

    invoke-static {v1, v5, v2, v3}, Lcom/iflytek/yd/util/Share;->shareToApplication(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public final init(Landroid/content/Context;Lcom/iflytek/mmp/core/webcore/BrowserCore;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "browserCore"    # Lcom/iflytek/mmp/core/webcore/BrowserCore;

    .prologue
    .line 114
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 120
    return-void
.end method
