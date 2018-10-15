.class Lcom/iflytek/viafly/ui/view/MicrophoneView$1;
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
    .line 83
    iput-object p1, p0, Lcom/iflytek/viafly/ui/view/MicrophoneView$1;->this$0:Lcom/iflytek/viafly/ui/view/MicrophoneView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 86
    iget-object v1, p0, Lcom/iflytek/viafly/ui/view/MicrophoneView$1;->this$0:Lcom/iflytek/viafly/ui/view/MicrophoneView;

    invoke-static {v1}, Lcom/iflytek/viafly/ui/view/MicrophoneView;->access$000(Lcom/iflytek/viafly/ui/view/MicrophoneView;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/iflytek/viafly/ui/view/MicrophoneView$1;->this$0:Lcom/iflytek/viafly/ui/view/MicrophoneView;

    invoke-static {v1}, Lcom/iflytek/viafly/ui/view/MicrophoneView;->access$000(Lcom/iflytek/viafly/ui/view/MicrophoneView;)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-nez v1, :cond_2

    .line 87
    :cond_0
    const-string/jumbo v1, "MicrophoneView"

    const-string/jumbo v2, "mInitAnimationRunnable | mInitDrawables is null"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :cond_1
    return-void

    .line 90
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/iflytek/viafly/ui/view/MicrophoneView$1;->this$0:Lcom/iflytek/viafly/ui/view/MicrophoneView;

    invoke-static {v1}, Lcom/iflytek/viafly/ui/view/MicrophoneView;->access$000(Lcom/iflytek/viafly/ui/view/MicrophoneView;)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 91
    iget-object v1, p0, Lcom/iflytek/viafly/ui/view/MicrophoneView$1;->this$0:Lcom/iflytek/viafly/ui/view/MicrophoneView;

    invoke-static {v1}, Lcom/iflytek/viafly/ui/view/MicrophoneView;->access$100(Lcom/iflytek/viafly/ui/view/MicrophoneView;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 94
    iget-object v1, p0, Lcom/iflytek/viafly/ui/view/MicrophoneView$1;->this$0:Lcom/iflytek/viafly/ui/view/MicrophoneView;

    iget-object v2, p0, Lcom/iflytek/viafly/ui/view/MicrophoneView$1;->this$0:Lcom/iflytek/viafly/ui/view/MicrophoneView;

    invoke-static {v2}, Lcom/iflytek/viafly/ui/view/MicrophoneView;->access$000(Lcom/iflytek/viafly/ui/view/MicrophoneView;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-static {v1, v2}, Lcom/iflytek/viafly/ui/view/MicrophoneView;->access$200(Lcom/iflytek/viafly/ui/view/MicrophoneView;Ljava/lang/String;)V

    .line 95
    iget-object v1, p0, Lcom/iflytek/viafly/ui/view/MicrophoneView$1;->this$0:Lcom/iflytek/viafly/ui/view/MicrophoneView;

    const-wide/16 v2, 0x50

    invoke-static {v1, v2, v3}, Lcom/iflytek/viafly/ui/view/MicrophoneView;->access$300(Lcom/iflytek/viafly/ui/view/MicrophoneView;J)V

    .line 90
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
