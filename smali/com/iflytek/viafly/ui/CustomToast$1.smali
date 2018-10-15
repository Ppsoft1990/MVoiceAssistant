.class Lcom/iflytek/viafly/ui/CustomToast$1;
.super Ljava/lang/Object;
.source "CustomToast.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/ui/CustomToast;->show(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/viafly/ui/CustomToast;

.field final synthetic val$count:I


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/ui/CustomToast;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/ui/CustomToast;

    .prologue
    .line 221
    iput-object p1, p0, Lcom/iflytek/viafly/ui/CustomToast$1;->this$0:Lcom/iflytek/viafly/ui/CustomToast;

    iput p2, p0, Lcom/iflytek/viafly/ui/CustomToast$1;->val$count:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 225
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/iflytek/viafly/ui/CustomToast$1;->val$count:I

    if-ge v1, v2, :cond_0

    .line 227
    const-wide/16 v2, 0x64

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 228
    :catch_0
    move-exception v0

    .line 229
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 232
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_0
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Lcom/iflytek/viafly/ui/CustomToast$1$1;

    invoke-direct {v3, p0}, Lcom/iflytek/viafly/ui/CustomToast$1$1;-><init>(Lcom/iflytek/viafly/ui/CustomToast$1;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 246
    return-void
.end method
