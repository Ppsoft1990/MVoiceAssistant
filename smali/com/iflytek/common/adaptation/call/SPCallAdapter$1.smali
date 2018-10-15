.class Lcom/iflytek/common/adaptation/call/SPCallAdapter$1;
.super Ljava/lang/Object;
.source "SPCallAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/common/adaptation/call/SPCallAdapter;->restoreDefaultSim(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/common/adaptation/call/SPCallAdapter;

.field final synthetic val$defaultSimId:I


# direct methods
.method constructor <init>(Lcom/iflytek/common/adaptation/call/SPCallAdapter;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/common/adaptation/call/SPCallAdapter;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/iflytek/common/adaptation/call/SPCallAdapter$1;->this$0:Lcom/iflytek/common/adaptation/call/SPCallAdapter;

    iput p2, p0, Lcom/iflytek/common/adaptation/call/SPCallAdapter$1;->val$defaultSimId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 121
    const-wide/16 v2, 0x3a98

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    :goto_0
    iget-object v1, p0, Lcom/iflytek/common/adaptation/call/SPCallAdapter$1;->this$0:Lcom/iflytek/common/adaptation/call/SPCallAdapter;

    iget v2, p0, Lcom/iflytek/common/adaptation/call/SPCallAdapter$1;->val$defaultSimId:I

    invoke-static {v1, v2}, Lcom/iflytek/common/adaptation/call/SPCallAdapter;->access$000(Lcom/iflytek/common/adaptation/call/SPCallAdapter;I)V

    .line 127
    const-string/jumbo v1, "HaierHTI600CallAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "restoreDefaultSim | defaultSimId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/iflytek/common/adaptation/call/SPCallAdapter$1;->val$defaultSimId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    return-void

    .line 122
    :catch_0
    move-exception v0

    .line 124
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
