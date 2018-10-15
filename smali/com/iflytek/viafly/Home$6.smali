.class Lcom/iflytek/viafly/Home$6;
.super Lpb$a;
.source "Home.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/Home;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/Home;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/Home;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/Home;

    .prologue
    .line 1789
    iput-object p1, p0, Lcom/iflytek/viafly/Home$6;->a:Lcom/iflytek/viafly/Home;

    invoke-direct {p0}, Lpb$a;-><init>()V

    return-void
.end method


# virtual methods
.method public onAgreed()V
    .locals 1

    .prologue
    .line 1791
    invoke-static {}, Lpb;->a()Lpb;

    move-result-object v0

    invoke-virtual {v0}, Lpb;->c()V

    .line 1792
    return-void
.end method
