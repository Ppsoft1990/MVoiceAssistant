.class Lcom/iflytek/viafly/smartschedule/AnimImageView$1;
.super Ljava/lang/Object;
.source "AnimImageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/smartschedule/AnimImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/viafly/smartschedule/AnimImageView;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/smartschedule/AnimImageView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/smartschedule/AnimImageView;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/iflytek/viafly/smartschedule/AnimImageView$1;->this$0:Lcom/iflytek/viafly/smartschedule/AnimImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 84
    iget-object v4, p0, Lcom/iflytek/viafly/smartschedule/AnimImageView$1;->this$0:Lcom/iflytek/viafly/smartschedule/AnimImageView;

    invoke-static {v4}, Lcom/iflytek/viafly/smartschedule/AnimImageView;->access$000(Lcom/iflytek/viafly/smartschedule/AnimImageView;)[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lazz;->a([Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 104
    :cond_0
    :goto_0
    return-void

    .line 88
    :cond_1
    iget-object v4, p0, Lcom/iflytek/viafly/smartschedule/AnimImageView$1;->this$0:Lcom/iflytek/viafly/smartschedule/AnimImageView;

    invoke-static {v4}, Lcom/iflytek/viafly/smartschedule/AnimImageView;->access$000(Lcom/iflytek/viafly/smartschedule/AnimImageView;)[Ljava/lang/String;

    move-result-object v4

    array-length v3, v4

    .line 89
    .local v3, "len":I
    iget-object v4, p0, Lcom/iflytek/viafly/smartschedule/AnimImageView$1;->this$0:Lcom/iflytek/viafly/smartschedule/AnimImageView;

    invoke-static {v4}, Lcom/iflytek/viafly/smartschedule/AnimImageView;->access$100(Lcom/iflytek/viafly/smartschedule/AnimImageView;)I

    move-result v4

    mul-int v0, v4, v3

    .line 91
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 92
    iget-object v4, p0, Lcom/iflytek/viafly/smartschedule/AnimImageView$1;->this$0:Lcom/iflytek/viafly/smartschedule/AnimImageView;

    invoke-static {v4}, Lcom/iflytek/viafly/smartschedule/AnimImageView;->access$200(Lcom/iflytek/viafly/smartschedule/AnimImageView;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 93
    const-string/jumbo v4, "AnimImageView"

    const-string/jumbo v5, "mLoadingAnimationRunnable | mLaoding = false, break"

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :cond_2
    iget-object v4, p0, Lcom/iflytek/viafly/smartschedule/AnimImageView$1;->this$0:Lcom/iflytek/viafly/smartschedule/AnimImageView;

    invoke-static {v4}, Lcom/iflytek/viafly/smartschedule/AnimImageView;->access$500(Lcom/iflytek/viafly/smartschedule/AnimImageView;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/iflytek/viafly/util/IflyStringUtil;->d(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 102
    iget-object v4, p0, Lcom/iflytek/viafly/smartschedule/AnimImageView$1;->this$0:Lcom/iflytek/viafly/smartschedule/AnimImageView;

    iget-object v5, p0, Lcom/iflytek/viafly/smartschedule/AnimImageView$1;->this$0:Lcom/iflytek/viafly/smartschedule/AnimImageView;

    invoke-static {v5}, Lcom/iflytek/viafly/smartschedule/AnimImageView;->access$500(Lcom/iflytek/viafly/smartschedule/AnimImageView;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/iflytek/viafly/smartschedule/AnimImageView;->access$300(Lcom/iflytek/viafly/smartschedule/AnimImageView;Ljava/lang/String;)V

    goto :goto_0

    .line 96
    :cond_3
    rem-int v2, v1, v3

    .line 97
    .local v2, "idx":I
    iget-object v4, p0, Lcom/iflytek/viafly/smartschedule/AnimImageView$1;->this$0:Lcom/iflytek/viafly/smartschedule/AnimImageView;

    iget-object v5, p0, Lcom/iflytek/viafly/smartschedule/AnimImageView$1;->this$0:Lcom/iflytek/viafly/smartschedule/AnimImageView;

    invoke-static {v5}, Lcom/iflytek/viafly/smartschedule/AnimImageView;->access$000(Lcom/iflytek/viafly/smartschedule/AnimImageView;)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v2

    invoke-static {v4, v5}, Lcom/iflytek/viafly/smartschedule/AnimImageView;->access$300(Lcom/iflytek/viafly/smartschedule/AnimImageView;Ljava/lang/String;)V

    .line 98
    iget-object v4, p0, Lcom/iflytek/viafly/smartschedule/AnimImageView$1;->this$0:Lcom/iflytek/viafly/smartschedule/AnimImageView;

    const-wide/16 v6, 0x12c

    invoke-static {v4, v6, v7}, Lcom/iflytek/viafly/smartschedule/AnimImageView;->access$400(Lcom/iflytek/viafly/smartschedule/AnimImageView;J)V

    .line 91
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method
