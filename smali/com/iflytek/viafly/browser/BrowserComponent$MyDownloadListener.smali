.class Lcom/iflytek/viafly/browser/BrowserComponent$MyDownloadListener;
.super Ljava/lang/Object;
.source "BrowserComponent.java"

# interfaces
.implements Landroid/webkit/DownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/browser/BrowserComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyDownloadListener"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MyDownloadListener"


# instance fields
.field final synthetic this$0:Lcom/iflytek/viafly/browser/BrowserComponent;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/browser/BrowserComponent;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/browser/BrowserComponent;

    .prologue
    .line 211
    iput-object p1, p0, Lcom/iflytek/viafly/browser/BrowserComponent$MyDownloadListener;->this$0:Lcom/iflytek/viafly/browser/BrowserComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getFileNameFromUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 247
    const/4 v1, 0x0

    .line 248
    .local v1, "title":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 249
    const/16 v2, 0x2f

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 250
    .local v0, "index":I
    const/4 v2, -0x1

    if-le v0, v2, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_0

    .line 251
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 255
    .end local v0    # "index":I
    :cond_0
    if-nez v1, :cond_1

    .line 256
    const-string/jumbo v1, "\u5f53\u524d\u4efb\u52a1"

    .line 258
    :cond_1
    return-object v1
.end method


# virtual methods
.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 9
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "userAgent"    # Ljava/lang/String;
    .param p3, "contentDisposition"    # Ljava/lang/String;
    .param p4, "mimetype"    # Ljava/lang/String;
    .param p5, "contentLength"    # J

    .prologue
    const/4 v3, 0x1

    .line 217
    const-string/jumbo v0, "MyDownloadListener"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "DownloadListener:onDownloadStart() | url="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ", userAgent="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ", contentDisposition="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ", mimetype="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ", contentLength="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/browser/BrowserComponent$MyDownloadListener;->getFileNameFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 224
    .local v1, "title":Ljava/lang/String;
    const-string/jumbo v0, "MyDownloadListener"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "app name = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    const-string/jumbo v0, ".apk"

    invoke-virtual {v1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 227
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserComponent$MyDownloadListener;->this$0:Lcom/iflytek/viafly/browser/BrowserComponent;

    invoke-static {v0}, Lcom/iflytek/viafly/browser/BrowserComponent;->access$000(Lcom/iflytek/viafly/browser/BrowserComponent;)Lcom/iflytek/viafly/browser/IBrowserConnection;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserComponent$MyDownloadListener;->this$0:Lcom/iflytek/viafly/browser/BrowserComponent;

    invoke-static {v0}, Lcom/iflytek/viafly/browser/BrowserComponent;->access$000(Lcom/iflytek/viafly/browser/BrowserComponent;)Lcom/iflytek/viafly/browser/IBrowserConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/iflytek/viafly/browser/IBrowserConnection;->isCustomDownload()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 228
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserComponent$MyDownloadListener;->this$0:Lcom/iflytek/viafly/browser/BrowserComponent;

    invoke-static {v0}, Lcom/iflytek/viafly/browser/BrowserComponent;->access$000(Lcom/iflytek/viafly/browser/BrowserComponent;)Lcom/iflytek/viafly/browser/IBrowserConnection;

    move-result-object v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-wide v6, p5

    invoke-interface/range {v0 .. v7}, Lcom/iflytek/viafly/browser/IBrowserConnection;->onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 244
    :cond_0
    :goto_0
    return-void

    .line 230
    :cond_1
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserComponent$MyDownloadListener;->this$0:Lcom/iflytek/viafly/browser/BrowserComponent;

    invoke-static {v0}, Lcom/iflytek/viafly/browser/BrowserComponent;->access$100(Lcom/iflytek/viafly/browser/BrowserComponent;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lno;->a(Landroid/content/Context;)Lno;

    move-result-object v8

    .line 231
    .local v8, "downloadController":Lno;
    const-class v0, Lcom/iflytek/viafly/browser/BrowserComponent;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/iflytek/viafly/browser/BrowserDownloadStateListener;

    iget-object v4, p0, Lcom/iflytek/viafly/browser/BrowserComponent$MyDownloadListener;->this$0:Lcom/iflytek/viafly/browser/BrowserComponent;

    invoke-static {v4}, Lcom/iflytek/viafly/browser/BrowserComponent;->access$100(Lcom/iflytek/viafly/browser/BrowserComponent;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/iflytek/viafly/browser/BrowserDownloadStateListener;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v0, v2}, Lno;->a(Ljava/lang/String;Lno$c;)V

    .line 232
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserComponent$MyDownloadListener;->this$0:Lcom/iflytek/viafly/browser/BrowserComponent;

    invoke-static {v0}, Lcom/iflytek/viafly/browser/BrowserComponent;->access$100(Lcom/iflytek/viafly/browser/BrowserComponent;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lno;->a(Landroid/content/Context;)Lno;

    move-result-object v2

    const-string/jumbo v4, "browser_application"

    move v5, v3

    move-object v6, v1

    move-object v7, p1

    invoke-virtual/range {v2 .. v7}, Lno;->a(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 236
    const-string/jumbo v0, "MyDownloadListener"

    const-string/jumbo v2, "DownloadController download"

    invoke-static {v0, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 239
    .end local v8    # "downloadController":Lno;
    :cond_2
    const-string/jumbo v0, "MyDownloadListener"

    const-string/jumbo v2, "brower download"

    invoke-static {v0, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserComponent$MyDownloadListener;->this$0:Lcom/iflytek/viafly/browser/BrowserComponent;

    invoke-static {v0}, Lcom/iflytek/viafly/browser/BrowserComponent;->access$200(Lcom/iflytek/viafly/browser/BrowserComponent;)Lcom/iflytek/viafly/browser/BrowserView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserComponent$MyDownloadListener;->this$0:Lcom/iflytek/viafly/browser/BrowserComponent;

    invoke-static {v0}, Lcom/iflytek/viafly/browser/BrowserComponent;->access$200(Lcom/iflytek/viafly/browser/BrowserComponent;)Lcom/iflytek/viafly/browser/BrowserView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/iflytek/viafly/browser/BrowserView;->startSystemConponent(Ljava/lang/String;)V

    goto :goto_0
.end method
