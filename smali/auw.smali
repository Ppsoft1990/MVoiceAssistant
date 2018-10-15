.class public Lauw;
.super Ljava/lang/Object;
.source "SchedulePowerManager.java"


# static fields
.field private static a:Lauw;

.field private static b:Landroid/content/Context;


# instance fields
.field private c:Lauv;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    sput-object p1, Lauw;->b:Landroid/content/Context;

    .line 22
    new-instance v0, Lauv;

    invoke-direct {v0, p1}, Lauv;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lauw;->c:Lauv;

    .line 23
    return-void
.end method

.method public static a(Landroid/content/Context;)Lauw;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    sget-object v0, Lauw;->a:Lauw;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Lauw;

    invoke-direct {v0, p0}, Lauw;-><init>(Landroid/content/Context;)V

    sput-object v0, Lauw;->a:Lauw;

    .line 29
    :cond_0
    sget-object v0, Lauw;->a:Lauw;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 36
    sget-object v0, Lauw;->b:Landroid/content/Context;

    invoke-static {v0}, Lig;->a(Landroid/content/Context;)Lig;

    move-result-object v0

    invoke-virtual {v0}, Lig;->isScreenOn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 37
    const-string/jumbo v0, "SchedulePowerManager"

    const-string/jumbo v1, "wakeLock() | set screen bright..."

    invoke-static {v0, v1}, Lhj;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Lauw;->c:Lauv;

    const v1, 0x3000001a

    const-class v2, Lcom/iflytek/viafly/schedule/framework/ScheduleService;

    .line 41
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 38
    invoke-virtual {v0, v1, v2}, Lauv;->a(ILjava/lang/String;)V

    .line 45
    :goto_0
    return-void

    .line 43
    :cond_0
    const-string/jumbo v0, "SchedulePowerManager"

    const-string/jumbo v1, "wakeLock() | screen has bright yet!"

    invoke-static {v0, v1}, Lhj;->h(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 51
    iget-object v0, p0, Lauw;->c:Lauv;

    invoke-virtual {v0}, Lauv;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    const-string/jumbo v0, "SchedulePowerManager"

    const-string/jumbo v1, "releaseLock() | set screen dim..."

    invoke-static {v0, v1}, Lhj;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lauw;->c:Lauv;

    invoke-virtual {v0}, Lauv;->a()V

    .line 55
    :cond_0
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 61
    const-string/jumbo v0, "SchedulePowerManager"

    const-string/jumbo v1, "unlockScreen() | unlock screen lock..."

    invoke-static {v0, v1}, Lhj;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lauw;->c:Lauv;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lauv;->a(Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method public d()V
    .locals 2

    .prologue
    .line 69
    const-string/jumbo v0, "SchedulePowerManager"

    const-string/jumbo v1, "lockScreen() | lock screen lock..."

    invoke-static {v0, v1}, Lhj;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lauw;->c:Lauv;

    invoke-virtual {v0}, Lauv;->c()V

    .line 71
    return-void
.end method

.method public e()V
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lauw;->c:Lauv;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lauw;->c:Lauv;

    const-class v1, Lcom/iflytek/viafly/schedule/framework/ScheduleService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lauv;->b(Ljava/lang/String;)V

    .line 79
    :cond_0
    return-void
.end method

.method public f()V
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lauw;->c:Lauv;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lauw;->c:Lauv;

    const-class v1, Lcom/iflytek/viafly/schedule/framework/ScheduleService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lauv;->b(Ljava/lang/String;)V

    .line 86
    :cond_0
    return-void
.end method
