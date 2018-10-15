.class public Lhf;
.super Landroid/database/ContentObserver;
.source "ContactObserver.java"


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 24
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 25
    iput-object p1, p0, Lhf;->a:Landroid/content/Context;

    .line 26
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .param p1, "selfChange"    # Z

    .prologue
    .line 30
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 31
    const-string/jumbo v1, "ContactObserver"

    const-string/jumbo v2, "onChange"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lhf;->a:Landroid/content/Context;

    const-class v2, Lcom/iflytek/viafly/mutiprocess/ProcessCommunicateService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 33
    .local v0, "eventIntent":Landroid/content/Intent;
    const-string/jumbo v1, "com.iflytek.cmccACTION_CONTACT_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 34
    iget-object v1, p0, Lhf;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 35
    return-void
.end method
