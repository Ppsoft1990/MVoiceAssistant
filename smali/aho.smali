.class public Laho;
.super Laht;
.source "HomeShortCutHelper.java"


# direct methods
.method public constructor <init>(Lahu;)V
    .locals 0
    .param p1, "homeContext"    # Lahu;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Laht;-><init>(Lahu;)V

    .line 23
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Intent;)Z
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 29
    invoke-super {p0, p1}, Laht;->a(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public b(Landroid/content/Intent;)Z
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 42
    invoke-super {p0, p1}, Laht;->b(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public b(Z)Z
    .locals 7
    .param p1, "isFirst"    # Z

    .prologue
    .line 47
    if-eqz p1, :cond_0

    .line 48
    invoke-virtual {p0}, Laho;->p()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lahr;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 51
    invoke-virtual {p0}, Laho;->p()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v1

    invoke-virtual {p0}, Laho;->p()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lhl;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 52
    .local v0, "channelId":Ljava/lang/String;
    const-string/jumbo v1, "16010029"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 55
    invoke-virtual {p0}, Laho;->p()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Laho;->p()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/iflytek/viafly/ui/activity/SpeechDialog;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Laho;->p()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0c00bf

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Laho;->p()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0203c1

    invoke-static {v5, v6}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v5

    invoke-static {v1, v2, v3, v4, v5}, Lazv;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent$ShortcutIconResource;)V

    .line 60
    .end local v0    # "channelId":Ljava/lang/String;
    :cond_0
    invoke-super {p0, p1}, Laht;->b(Z)Z

    move-result v1

    return v1
.end method

.method public d(Landroid/content/Intent;)Z
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 36
    invoke-super {p0, p1}, Laht;->d(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method
