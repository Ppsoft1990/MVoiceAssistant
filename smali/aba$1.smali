.class Laba$1;
.super Ljava/lang/Object;
.source "DoubleCardUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laba;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Laba;


# direct methods
.method constructor <init>(Laba;)V
    .locals 0
    .param p1, "this$0"    # Laba;

    .prologue
    .line 153
    iput-object p1, p0, Laba$1;->a:Laba;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 156
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmccIFLY_CONTACT_SIMMODE"

    iget-object v2, p0, Laba$1;->a:Laba;

    .line 157
    invoke-virtual {v2}, Laba;->e()Ljava/lang/String;

    move-result-object v2

    .line 156
    invoke-virtual {v0, v1, v2}, Lil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    return-void
.end method
