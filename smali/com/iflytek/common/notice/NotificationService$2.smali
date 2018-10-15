.class Lcom/iflytek/common/notice/NotificationService$2;
.super Ljava/lang/Object;
.source "NotificationService.java"

# interfaces
.implements Lbdd;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/common/notice/NotificationService;->b(Lcom/iflytek/common/notice/NotificationParam;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/common/notice/NotificationParam;

.field final synthetic b:Lcom/iflytek/common/notice/NotificationService;


# direct methods
.method constructor <init>(Lcom/iflytek/common/notice/NotificationService;Lcom/iflytek/common/notice/NotificationParam;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/common/notice/NotificationService;

    .prologue
    .line 179
    iput-object p1, p0, Lcom/iflytek/common/notice/NotificationService$2;->b:Lcom/iflytek/common/notice/NotificationService;

    iput-object p2, p0, Lcom/iflytek/common/notice/NotificationService$2;->a:Lcom/iflytek/common/notice/NotificationParam;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadingCancelled(Ljava/lang/String;Landroid/view/View;)V
    .locals 4
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 199
    const-string/jumbo v0, "NotificationService"

    const-string/jumbo v1, "updateNotice| iamgeloader.onLoadingCancelled"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    iget-object v0, p0, Lcom/iflytek/common/notice/NotificationService$2;->b:Lcom/iflytek/common/notice/NotificationService;

    iget-object v1, p0, Lcom/iflytek/common/notice/NotificationService$2;->b:Lcom/iflytek/common/notice/NotificationService;

    invoke-virtual {v1}, Lcom/iflytek/common/notice/NotificationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/common/notice/NotificationService$2;->a:Lcom/iflytek/common/notice/NotificationParam;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/iflytek/common/notice/NotificationService;->a(Landroid/content/Context;Lcom/iflytek/common/notice/NotificationParam;Landroid/graphics/Bitmap;)Landroid/app/Notification;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/common/notice/NotificationService$2;->a:Lcom/iflytek/common/notice/NotificationParam;

    invoke-static {v0, v1, v2}, Lcom/iflytek/common/notice/NotificationService;->a(Lcom/iflytek/common/notice/NotificationService;Landroid/app/Notification;Lcom/iflytek/common/notice/NotificationParam;)V

    .line 201
    return-void
.end method

.method public onLoadingComplete(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 193
    const-string/jumbo v0, "NotificationService"

    const-string/jumbo v1, "updateNotice| iamgeloader.onLoadingComplete"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iget-object v0, p0, Lcom/iflytek/common/notice/NotificationService$2;->b:Lcom/iflytek/common/notice/NotificationService;

    iget-object v1, p0, Lcom/iflytek/common/notice/NotificationService$2;->b:Lcom/iflytek/common/notice/NotificationService;

    invoke-virtual {v1}, Lcom/iflytek/common/notice/NotificationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/common/notice/NotificationService$2;->a:Lcom/iflytek/common/notice/NotificationParam;

    invoke-static {v1, v2, p3}, Lcom/iflytek/common/notice/NotificationService;->a(Landroid/content/Context;Lcom/iflytek/common/notice/NotificationParam;Landroid/graphics/Bitmap;)Landroid/app/Notification;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/common/notice/NotificationService$2;->a:Lcom/iflytek/common/notice/NotificationParam;

    invoke-static {v0, v1, v2}, Lcom/iflytek/common/notice/NotificationService;->a(Lcom/iflytek/common/notice/NotificationService;Landroid/app/Notification;Lcom/iflytek/common/notice/NotificationParam;)V

    .line 195
    return-void
.end method

.method public onLoadingFailed(Ljava/lang/String;Landroid/view/View;Lcom/nostra13/universalimageloader/core/assist/FailReason;)V
    .locals 4
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "failReason"    # Lcom/nostra13/universalimageloader/core/assist/FailReason;

    .prologue
    .line 187
    const-string/jumbo v0, "NotificationService"

    const-string/jumbo v1, "updateNotice| iamgeloader.onLoadingFailed"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    iget-object v0, p0, Lcom/iflytek/common/notice/NotificationService$2;->b:Lcom/iflytek/common/notice/NotificationService;

    iget-object v1, p0, Lcom/iflytek/common/notice/NotificationService$2;->b:Lcom/iflytek/common/notice/NotificationService;

    invoke-virtual {v1}, Lcom/iflytek/common/notice/NotificationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/common/notice/NotificationService$2;->a:Lcom/iflytek/common/notice/NotificationParam;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/iflytek/common/notice/NotificationService;->a(Landroid/content/Context;Lcom/iflytek/common/notice/NotificationParam;Landroid/graphics/Bitmap;)Landroid/app/Notification;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/common/notice/NotificationService$2;->a:Lcom/iflytek/common/notice/NotificationParam;

    invoke-static {v0, v1, v2}, Lcom/iflytek/common/notice/NotificationService;->a(Lcom/iflytek/common/notice/NotificationService;Landroid/app/Notification;Lcom/iflytek/common/notice/NotificationParam;)V

    .line 189
    return-void
.end method

.method public onLoadingStarted(Ljava/lang/String;Landroid/view/View;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 182
    const-string/jumbo v0, "NotificationService"

    const-string/jumbo v1, "updateNotice| iamgeloader.onLoadingStarted"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    return-void
.end method
