.class Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity$3$1;
.super Ljava/lang/Object;
.source "BookCollectListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity$3;->onSubCollectResult()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity$3;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity$3;

    .prologue
    .line 351
    iput-object p1, p0, Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity$3$1;->a:Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 354
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity$3$1;->a:Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity$3;

    iget-object v0, v0, Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity$3;->a:Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity;

    const-string/jumbo v1, "\u5220\u9664\u6210\u529f"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 356
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity$3$1;->a:Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity$3;

    iget-object v0, v0, Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity$3;->a:Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity;->a(Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity;I)I

    .line 357
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity$3$1;->a:Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity$3;

    iget-object v0, v0, Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity$3;->a:Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity;

    invoke-static {v0}, Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity;->a(Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity;)V

    .line 358
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity$3$1;->a:Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity$3;

    iget-object v0, v0, Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity$3;->a:Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity;

    invoke-virtual {v0}, Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity;->a()V

    .line 359
    return-void
.end method
