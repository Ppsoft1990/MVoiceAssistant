.class Lcom/iflytek/viafly/ui/InteractiveToast$Builder$1;
.super Ljava/lang/Object;
.source "InteractiveToast.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/ui/InteractiveToast$Builder;->show(Landroid/app/Activity;I)Lcom/iflytek/viafly/ui/InteractiveToast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/viafly/ui/InteractiveToast$Builder;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/ui/InteractiveToast$Builder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/ui/InteractiveToast$Builder;

    .prologue
    .line 188
    iput-object p1, p0, Lcom/iflytek/viafly/ui/InteractiveToast$Builder$1;->this$0:Lcom/iflytek/viafly/ui/InteractiveToast$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 192
    iget-object v1, p0, Lcom/iflytek/viafly/ui/InteractiveToast$Builder$1;->this$0:Lcom/iflytek/viafly/ui/InteractiveToast$Builder;

    invoke-static {v1}, Lcom/iflytek/viafly/ui/InteractiveToast$Builder;->access$100(Lcom/iflytek/viafly/ui/InteractiveToast$Builder;)Lcom/iflytek/viafly/ui/InteractiveToast;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/iflytek/viafly/ui/InteractiveToast$Builder$1;->this$0:Lcom/iflytek/viafly/ui/InteractiveToast$Builder;

    invoke-static {v1}, Lcom/iflytek/viafly/ui/InteractiveToast$Builder;->access$100(Lcom/iflytek/viafly/ui/InteractiveToast$Builder;)Lcom/iflytek/viafly/ui/InteractiveToast;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iflytek/viafly/ui/InteractiveToast;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 194
    :try_start_0
    iget-object v1, p0, Lcom/iflytek/viafly/ui/InteractiveToast$Builder$1;->this$0:Lcom/iflytek/viafly/ui/InteractiveToast$Builder;

    invoke-static {v1}, Lcom/iflytek/viafly/ui/InteractiveToast$Builder;->access$100(Lcom/iflytek/viafly/ui/InteractiveToast$Builder;)Lcom/iflytek/viafly/ui/InteractiveToast;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iflytek/viafly/ui/InteractiveToast;->show()V

    .line 195
    iget-object v1, p0, Lcom/iflytek/viafly/ui/InteractiveToast$Builder$1;->this$0:Lcom/iflytek/viafly/ui/InteractiveToast$Builder;

    invoke-static {v1}, Lcom/iflytek/viafly/ui/InteractiveToast$Builder;->access$100(Lcom/iflytek/viafly/ui/InteractiveToast$Builder;)Lcom/iflytek/viafly/ui/InteractiveToast;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/viafly/ui/InteractiveToast$Builder$1;->this$0:Lcom/iflytek/viafly/ui/InteractiveToast$Builder;

    invoke-static {v2}, Lcom/iflytek/viafly/ui/InteractiveToast$Builder;->access$200(Lcom/iflytek/viafly/ui/InteractiveToast$Builder;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/iflytek/viafly/ui/InteractiveToast$Builder;->access$300(Lcom/iflytek/viafly/ui/InteractiveToast;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    :cond_0
    :goto_0
    return-void

    .line 196
    :catch_0
    move-exception v0

    .line 197
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "InteractiveToast"

    const-string/jumbo v2, "show() toast"

    invoke-static {v1, v2, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
