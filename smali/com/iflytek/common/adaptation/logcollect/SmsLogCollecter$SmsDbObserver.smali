.class Lcom/iflytek/common/adaptation/logcollect/SmsLogCollecter$SmsDbObserver;
.super Landroid/database/ContentObserver;
.source "SmsLogCollecter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/common/adaptation/logcollect/SmsLogCollecter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SmsDbObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/common/adaptation/logcollect/SmsLogCollecter;


# direct methods
.method public constructor <init>(Lcom/iflytek/common/adaptation/logcollect/SmsLogCollecter;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/common/adaptation/logcollect/SmsLogCollecter;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/iflytek/common/adaptation/logcollect/SmsLogCollecter$SmsDbObserver;->this$0:Lcom/iflytek/common/adaptation/logcollect/SmsLogCollecter;

    .line 119
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 121
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 125
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 126
    iget-object v0, p0, Lcom/iflytek/common/adaptation/logcollect/SmsLogCollecter$SmsDbObserver;->this$0:Lcom/iflytek/common/adaptation/logcollect/SmsLogCollecter;

    invoke-virtual {v0}, Lcom/iflytek/common/adaptation/logcollect/SmsLogCollecter;->onDBChanged()V

    .line 127
    return-void
.end method
