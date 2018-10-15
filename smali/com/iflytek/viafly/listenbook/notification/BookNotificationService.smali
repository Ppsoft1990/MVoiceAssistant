.class public Lcom/iflytek/viafly/listenbook/notification/BookNotificationService;
.super Landroid/app/IntentService;
.source "BookNotificationService.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    const-string/jumbo v0, "BookNotificationService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 17
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 21
    if-eqz p1, :cond_0

    .line 24
    invoke-static {}, Lamz;->a()Lamz;

    move-result-object v0

    invoke-virtual {v0, p1}, Lamz;->a(Landroid/content/Intent;)V

    .line 27
    :cond_0
    return-void
.end method
