.class public Lcom/iflytek/viafly/VoiceCommandActivity;
.super Landroid/app/Activity;
.source "VoiceCommandActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private a()V
    .locals 3

    .prologue
    .line 42
    const-string/jumbo v1, "BluetoothVoiceCommandActivity"

    const-string/jumbo v2, "openHomeActivity()"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/iflytek/viafly/Home;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 44
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "android.intent.action.VOICE_COMMAND"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 45
    const/high16 v1, 0x14000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 46
    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/VoiceCommandActivity;->startActivity(Landroid/content/Intent;)V

    .line 47
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 22
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    const-string/jumbo v0, "BluetoothVoiceCommandActivity"

    const-string/jumbo v1, "onCreate()"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    invoke-static {p0}, Lig;->a(Landroid/content/Context;)Lig;

    move-result-object v0

    invoke-virtual {v0}, Lig;->isKeyGuardLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26
    invoke-static {p0}, Lbbp;->a(Landroid/content/Context;)Lbbp;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lbbp;->c(J)V

    .line 28
    :cond_0
    invoke-virtual {p0}, Lcom/iflytek/viafly/VoiceCommandActivity;->finish()V

    .line 29
    invoke-direct {p0}, Lcom/iflytek/viafly/VoiceCommandActivity;->a()V

    .line 30
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 34
    const-string/jumbo v0, "BluetoothVoiceCommandActivity"

    const-string/jumbo v1, "onDestroy()"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 36
    return-void
.end method
