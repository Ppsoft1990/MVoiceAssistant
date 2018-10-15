.class Lcom/iflytek/viafly/ui/view/MicrophoneView$2;
.super Ljava/lang/Object;
.source "MicrophoneView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/ui/view/MicrophoneView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/viafly/ui/view/MicrophoneView;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/ui/view/MicrophoneView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/ui/view/MicrophoneView;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/iflytek/viafly/ui/view/MicrophoneView$2;->this$0:Lcom/iflytek/viafly/ui/view/MicrophoneView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 103
    iget-object v2, p0, Lcom/iflytek/viafly/ui/view/MicrophoneView$2;->this$0:Lcom/iflytek/viafly/ui/view/MicrophoneView;

    invoke-static {v2}, Lcom/iflytek/viafly/ui/view/MicrophoneView;->access$400(Lcom/iflytek/viafly/ui/view/MicrophoneView;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/iflytek/viafly/ui/view/MicrophoneView$2;->this$0:Lcom/iflytek/viafly/ui/view/MicrophoneView;

    invoke-static {v2}, Lcom/iflytek/viafly/ui/view/MicrophoneView;->access$400(Lcom/iflytek/viafly/ui/view/MicrophoneView;)[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-nez v2, :cond_1

    .line 115
    :cond_0
    :goto_0
    return-void

    .line 106
    :cond_1
    iget-object v2, p0, Lcom/iflytek/viafly/ui/view/MicrophoneView$2;->this$0:Lcom/iflytek/viafly/ui/view/MicrophoneView;

    invoke-static {v2}, Lcom/iflytek/viafly/ui/view/MicrophoneView;->access$400(Lcom/iflytek/viafly/ui/view/MicrophoneView;)[Ljava/lang/String;

    move-result-object v2

    array-length v1, v2

    .line 107
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/16 v2, 0x2710

    if-ge v0, v2, :cond_0

    .line 108
    iget-object v2, p0, Lcom/iflytek/viafly/ui/view/MicrophoneView$2;->this$0:Lcom/iflytek/viafly/ui/view/MicrophoneView;

    invoke-static {v2}, Lcom/iflytek/viafly/ui/view/MicrophoneView;->access$500(Lcom/iflytek/viafly/ui/view/MicrophoneView;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 109
    const-string/jumbo v2, "MicrophoneView"

    const-string/jumbo v3, "mLoadingAnimationRunnable | mLaoding = false, break"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 112
    :cond_2
    iget-object v2, p0, Lcom/iflytek/viafly/ui/view/MicrophoneView$2;->this$0:Lcom/iflytek/viafly/ui/view/MicrophoneView;

    iget-object v3, p0, Lcom/iflytek/viafly/ui/view/MicrophoneView$2;->this$0:Lcom/iflytek/viafly/ui/view/MicrophoneView;

    invoke-static {v3}, Lcom/iflytek/viafly/ui/view/MicrophoneView;->access$400(Lcom/iflytek/viafly/ui/view/MicrophoneView;)[Ljava/lang/String;

    move-result-object v3

    rem-int v4, v0, v1

    aget-object v3, v3, v4

    invoke-static {v2, v3}, Lcom/iflytek/viafly/ui/view/MicrophoneView;->access$200(Lcom/iflytek/viafly/ui/view/MicrophoneView;Ljava/lang/String;)V

    .line 113
    iget-object v2, p0, Lcom/iflytek/viafly/ui/view/MicrophoneView$2;->this$0:Lcom/iflytek/viafly/ui/view/MicrophoneView;

    const-wide/16 v4, 0x50

    invoke-static {v2, v4, v5}, Lcom/iflytek/viafly/ui/view/MicrophoneView;->access$300(Lcom/iflytek/viafly/ui/view/MicrophoneView;J)V

    .line 107
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
