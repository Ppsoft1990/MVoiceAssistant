.class final Lcom/iflytek/framework/ui/share/ShareUtils$2;
.super Ljava/lang/Object;
.source "ShareUtils.java"

# interfaces
.implements Lcom/iflytek/framework/ui/share/ShareUtils$LoadImageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/framework/ui/share/ShareUtils;->share(Landroid/content/Context;Lcom/iflytek/framework/ui/share/LxShareObject$Build;Lcom/iflytek/framework/ui/share/IShareResultListener;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$build:Lcom/iflytek/framework/ui/share/LxShareObject$Build;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$shareResultListener:Lcom/iflytek/framework/ui/share/IShareResultListener;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/iflytek/framework/ui/share/LxShareObject$Build;Lcom/iflytek/framework/ui/share/IShareResultListener;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/iflytek/framework/ui/share/ShareUtils$2;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/iflytek/framework/ui/share/ShareUtils$2;->val$build:Lcom/iflytek/framework/ui/share/LxShareObject$Build;

    iput-object p3, p0, Lcom/iflytek/framework/ui/share/ShareUtils$2;->val$shareResultListener:Lcom/iflytek/framework/ui/share/IShareResultListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public load(Ljava/lang/String;)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 111
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/iflytek/framework/ui/share/ShareUtils$2;->val$context:Landroid/content/Context;

    const-string/jumbo v1, "\u5206\u4eab\u5931\u8d25"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 117
    :goto_0
    return-void

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/iflytek/framework/ui/share/ShareUtils$2;->val$build:Lcom/iflytek/framework/ui/share/LxShareObject$Build;

    invoke-virtual {v0, p1}, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->imagePath(Ljava/lang/String;)Lcom/iflytek/framework/ui/share/LxShareObject$Build;

    .line 116
    iget-object v0, p0, Lcom/iflytek/framework/ui/share/ShareUtils$2;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/iflytek/framework/ui/share/ShareUtils$2;->val$build:Lcom/iflytek/framework/ui/share/LxShareObject$Build;

    iget-object v2, p0, Lcom/iflytek/framework/ui/share/ShareUtils$2;->val$shareResultListener:Lcom/iflytek/framework/ui/share/IShareResultListener;

    invoke-static {v0, v1, v2}, Lcom/iflytek/framework/ui/share/ShareUtils;->access$000(Landroid/content/Context;Lcom/iflytek/framework/ui/share/LxShareObject$Build;Lcom/iflytek/framework/ui/share/IShareResultListener;)Z

    goto :goto_0
.end method
