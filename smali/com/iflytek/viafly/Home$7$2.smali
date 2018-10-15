.class Lcom/iflytek/viafly/Home$7$2;
.super Lpb$a;
.source "Home.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/Home$7;->onRequestPermissionsResult(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/Home$7;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/Home$7;)V
    .locals 0
    .param p1, "this$1"    # Lcom/iflytek/viafly/Home$7;

    .prologue
    .line 1898
    iput-object p1, p0, Lcom/iflytek/viafly/Home$7$2;->a:Lcom/iflytek/viafly/Home$7;

    invoke-direct {p0}, Lpb$a;-><init>()V

    return-void
.end method


# virtual methods
.method public onAgreed()V
    .locals 1

    .prologue
    .line 1900
    invoke-static {}, Lpb;->a()Lpb;

    move-result-object v0

    invoke-virtual {v0}, Lpb;->c()V

    .line 1901
    return-void
.end method
