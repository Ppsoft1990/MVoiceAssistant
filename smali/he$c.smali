.class Lhe$c;
.super Landroid/os/Handler;
.source "ContactManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lhe;


# direct methods
.method private constructor <init>(Lhe;)V
    .locals 0

    .prologue
    .line 633
    iput-object p1, p0, Lhe$c;->a:Lhe;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lhe;Lhe$1;)V
    .locals 0
    .param p1, "x0"    # Lhe;
    .param p2, "x1"    # Lhe$1;

    .prologue
    .line 633
    invoke-direct {p0, p1}, Lhe$c;-><init>(Lhe;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 636
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 637
    const-string/jumbo v0, "ContactManager"

    const-string/jumbo v1, "TriggerHandler | handleMessage"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lhe$a;

    if-eqz v0, :cond_0

    .line 639
    iget-object v1, p0, Lhe$c;->a:Lhe;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lhe$a;

    invoke-static {v1, v0}, Lhe;->a(Lhe;Lhe$a;)V

    .line 641
    :cond_0
    return-void
.end method
