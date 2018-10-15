.class Lcom/iflytek/viafly/ui/CustomToast$1$1;
.super Ljava/lang/Object;
.source "CustomToast.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/ui/CustomToast$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/iflytek/viafly/ui/CustomToast$1;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/ui/CustomToast$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/iflytek/viafly/ui/CustomToast$1;

    .prologue
    .line 232
    iput-object p1, p0, Lcom/iflytek/viafly/ui/CustomToast$1$1;->this$1:Lcom/iflytek/viafly/ui/CustomToast$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 236
    iget-object v1, p0, Lcom/iflytek/viafly/ui/CustomToast$1$1;->this$1:Lcom/iflytek/viafly/ui/CustomToast$1;

    iget-object v1, v1, Lcom/iflytek/viafly/ui/CustomToast$1;->this$0:Lcom/iflytek/viafly/ui/CustomToast;

    invoke-static {v1}, Lcom/iflytek/viafly/ui/CustomToast;->access$000(Lcom/iflytek/viafly/ui/CustomToast;)Landroid/widget/PopupWindow;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 238
    :try_start_0
    iget-object v1, p0, Lcom/iflytek/viafly/ui/CustomToast$1$1;->this$1:Lcom/iflytek/viafly/ui/CustomToast$1;

    iget-object v1, v1, Lcom/iflytek/viafly/ui/CustomToast$1;->this$0:Lcom/iflytek/viafly/ui/CustomToast;

    invoke-static {v1}, Lcom/iflytek/viafly/ui/CustomToast;->access$000(Lcom/iflytek/viafly/ui/CustomToast;)Landroid/widget/PopupWindow;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 239
    iget-object v1, p0, Lcom/iflytek/viafly/ui/CustomToast$1$1;->this$1:Lcom/iflytek/viafly/ui/CustomToast$1;

    iget-object v1, v1, Lcom/iflytek/viafly/ui/CustomToast$1;->this$0:Lcom/iflytek/viafly/ui/CustomToast;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/iflytek/viafly/ui/CustomToast;->access$102(Lcom/iflytek/viafly/ui/CustomToast;Landroid/content/Context;)Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 244
    :cond_0
    :goto_0
    return-void

    .line 240
    :catch_0
    move-exception v0

    .line 241
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "CustomToast"

    const-string/jumbo v2, "show()"

    invoke-static {v1, v2, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
