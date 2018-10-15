.class Laco$1;
.super Landroid/os/Handler;
.source "TelephoneResultHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laco;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Laco;


# direct methods
.method constructor <init>(Laco;)V
    .locals 0
    .param p1, "this$0"    # Laco;

    .prologue
    .line 78
    iput-object p1, p0, Laco$1;->a:Laco;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x1

    .line 82
    iget v0, p1, Landroid/os/Message;->what:I

    .line 83
    .local v0, "action":I
    if-ne v5, v0, :cond_1

    .line 85
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 86
    .local v1, "number":Ljava/lang/String;
    invoke-static {}, Laba;->a()Laba;

    move-result-object v4

    invoke-virtual {v4}, Laba;->b()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 87
    invoke-static {}, Lgx;->a()Lgx;

    move-result-object v4

    invoke-static {}, Laba;->a()Laba;

    move-result-object v5

    invoke-virtual {v5, v1}, Laba;->a(Ljava/lang/String;)Lcom/iflytek/common/adaptation/entity/SimCard;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Lgx;->a(Ljava/lang/String;Lcom/iflytek/common/adaptation/entity/SimCard;)V

    .line 107
    .end local v1    # "number":Ljava/lang/String;
    :goto_0
    return-void

    .line 89
    .restart local v1    # "number":Ljava/lang/String;
    :cond_0
    invoke-static {}, Lgx;->a()Lgx;

    move-result-object v4

    invoke-virtual {v4, v1}, Lgx;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 92
    .end local v1    # "number":Ljava/lang/String;
    :cond_1
    const/4 v4, 0x2

    if-ne v4, v0, :cond_3

    .line 94
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 95
    .restart local v1    # "number":Ljava/lang/String;
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 97
    .local v3, "simcardType":I
    if-ne v3, v5, :cond_2

    .line 98
    sget-object v2, Lcom/iflytek/common/adaptation/entity/SimCard;->first:Lcom/iflytek/common/adaptation/entity/SimCard;

    .line 102
    .local v2, "simcard":Lcom/iflytek/common/adaptation/entity/SimCard;
    :goto_1
    invoke-static {}, Lgx;->a()Lgx;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Lgx;->a(Ljava/lang/String;Lcom/iflytek/common/adaptation/entity/SimCard;)V

    goto :goto_0

    .line 100
    .end local v2    # "simcard":Lcom/iflytek/common/adaptation/entity/SimCard;
    :cond_2
    sget-object v2, Lcom/iflytek/common/adaptation/entity/SimCard;->second:Lcom/iflytek/common/adaptation/entity/SimCard;

    .restart local v2    # "simcard":Lcom/iflytek/common/adaptation/entity/SimCard;
    goto :goto_1

    .line 106
    .end local v1    # "number":Ljava/lang/String;
    .end local v2    # "simcard":Lcom/iflytek/common/adaptation/entity/SimCard;
    .end local v3    # "simcardType":I
    :cond_3
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0
.end method
