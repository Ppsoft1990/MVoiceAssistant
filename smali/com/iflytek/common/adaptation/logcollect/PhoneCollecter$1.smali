.class Lcom/iflytek/common/adaptation/logcollect/PhoneCollecter$1;
.super Ljava/lang/Object;
.source "PhoneCollecter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/common/adaptation/logcollect/PhoneCollecter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/common/adaptation/logcollect/PhoneCollecter;


# direct methods
.method constructor <init>(Lcom/iflytek/common/adaptation/logcollect/PhoneCollecter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/common/adaptation/logcollect/PhoneCollecter;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/iflytek/common/adaptation/logcollect/PhoneCollecter$1;->this$0:Lcom/iflytek/common/adaptation/logcollect/PhoneCollecter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/iflytek/common/adaptation/logcollect/PhoneCollecter$1;->this$0:Lcom/iflytek/common/adaptation/logcollect/PhoneCollecter;

    invoke-static {v0}, Lcom/iflytek/common/adaptation/logcollect/PhoneCollecter;->access$000(Lcom/iflytek/common/adaptation/logcollect/PhoneCollecter;)V

    .line 100
    return-void
.end method
