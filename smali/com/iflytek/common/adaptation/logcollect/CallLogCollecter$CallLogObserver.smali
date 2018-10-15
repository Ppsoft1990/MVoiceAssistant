.class Lcom/iflytek/common/adaptation/logcollect/CallLogCollecter$CallLogObserver;
.super Landroid/database/ContentObserver;
.source "CallLogCollecter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/common/adaptation/logcollect/CallLogCollecter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CallLogObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/common/adaptation/logcollect/CallLogCollecter;


# direct methods
.method public constructor <init>(Lcom/iflytek/common/adaptation/logcollect/CallLogCollecter;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/common/adaptation/logcollect/CallLogCollecter;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/iflytek/common/adaptation/logcollect/CallLogCollecter$CallLogObserver;->this$0:Lcom/iflytek/common/adaptation/logcollect/CallLogCollecter;

    .line 98
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 100
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 104
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 105
    iget-object v0, p0, Lcom/iflytek/common/adaptation/logcollect/CallLogCollecter$CallLogObserver;->this$0:Lcom/iflytek/common/adaptation/logcollect/CallLogCollecter;

    invoke-virtual {v0}, Lcom/iflytek/common/adaptation/logcollect/CallLogCollecter;->onDBChanged()V

    .line 106
    return-void
.end method
