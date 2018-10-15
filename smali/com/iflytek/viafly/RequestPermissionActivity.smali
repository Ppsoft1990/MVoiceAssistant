.class public Lcom/iflytek/viafly/RequestPermissionActivity;
.super Landroid/app/Activity;
.source "RequestPermissionActivity.java"


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private b:J

.field private volatile c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/viafly/RequestPermissionActivity;->c:Z

    return-void
.end method

.method private a()V
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    .line 92
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 93
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/iflytek/viafly/RequestPermissionActivity;->a:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 94
    .local v2, "str":Ljava/lang/String;
    invoke-static {p0, v2}, Lpn;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 95
    .local v0, "grantResult":I
    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 100
    .end local v0    # "grantResult":I
    .end local v2    # "str":Ljava/lang/String;
    :cond_1
    invoke-static {v1}, Lazz;->a(Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 101
    invoke-direct {p0}, Lcom/iflytek/viafly/RequestPermissionActivity;->b()V

    .line 102
    invoke-virtual {p0}, Lcom/iflytek/viafly/RequestPermissionActivity;->finish()V

    .line 109
    :cond_2
    :goto_1
    return-void

    .line 106
    :cond_3
    invoke-static {}, Laza;->a()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 107
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    const/16 v4, 0x65

    invoke-virtual {p0, v3, v4}, Lcom/iflytek/viafly/RequestPermissionActivity;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_1
.end method

.method private a(Landroid/content/Intent;)Z
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v0, 0x0

    .line 69
    if-nez p1, :cond_1

    .line 75
    :cond_0
    :goto_0
    return v0

    .line 73
    :cond_1
    const-string/jumbo v1, "extra_permissions"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/viafly/RequestPermissionActivity;->a:Ljava/util/ArrayList;

    .line 74
    const-string/jumbo v1, "extra_permission_request_code"

    const-wide/16 v2, 0x0

    invoke-virtual {p1, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/iflytek/viafly/RequestPermissionActivity;->b:J

    .line 75
    iget-object v1, p0, Lcom/iflytek/viafly/RequestPermissionActivity;->a:Ljava/util/ArrayList;

    invoke-static {v1}, Lazz;->a(Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private b()V
    .locals 10

    .prologue
    .line 126
    iget-object v5, p0, Lcom/iflytek/viafly/RequestPermissionActivity;->a:Ljava/util/ArrayList;

    invoke-static {v5}, Lazz;->a(Ljava/util/List;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 145
    :cond_0
    :goto_0
    return-void

    .line 130
    :cond_1
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/iflytek/viafly/RequestPermissionActivity;->c:Z

    .line 131
    const-string/jumbo v5, "RequestPermissionActivity"

    const-string/jumbo v6, "notifyResult"

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 133
    .local v2, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lpl;>;"
    iget-object v5, p0, Lcom/iflytek/viafly/RequestPermissionActivity;->a:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 134
    .local v4, "str":Ljava/lang/String;
    invoke-static {p0, v4}, Lpn;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/iflytek/common/permission/sdk23/entity/PermissionStatus;

    move-result-object v3

    .line 135
    .local v3, "status":Lcom/iflytek/common/permission/sdk23/entity/PermissionStatus;
    new-instance v0, Lpl;

    invoke-direct {v0}, Lpl;-><init>()V

    .line 136
    .local v0, "entity":Lpl;
    invoke-virtual {v0, v4}, Lpl;->a(Ljava/lang/String;)V

    .line 137
    invoke-virtual {v0, v3}, Lpl;->a(Lcom/iflytek/common/permission/sdk23/entity/PermissionStatus;)V

    .line 138
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 141
    .end local v0    # "entity":Lpl;
    .end local v3    # "status":Lcom/iflytek/common/permission/sdk23/entity/PermissionStatus;
    .end local v4    # "str":Ljava/lang/String;
    :cond_2
    iget-wide v6, p0, Lcom/iflytek/viafly/RequestPermissionActivity;->b:J

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-eqz v5, :cond_0

    .line 142
    new-instance v1, Lpm;

    iget-wide v6, p0, Lcom/iflytek/viafly/RequestPermissionActivity;->b:J

    invoke-direct {v1, v6, v7, v2}, Lpm;-><init>(JLjava/util/List;)V

    .line 143
    .local v1, "event":Lpm;
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v5

    invoke-virtual {v5, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 45
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    const-string/jumbo v1, "RequestPermissionActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onCreate | threadId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    invoke-static {}, Laza;->a()Z

    move-result v1

    if-nez v1, :cond_1

    .line 49
    invoke-virtual {p0}, Lcom/iflytek/viafly/RequestPermissionActivity;->finish()V

    .line 66
    :cond_0
    :goto_0
    return-void

    .line 53
    :cond_1
    invoke-virtual {p0}, Lcom/iflytek/viafly/RequestPermissionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/iflytek/viafly/RequestPermissionActivity;->a(Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 54
    invoke-virtual {p0}, Lcom/iflytek/viafly/RequestPermissionActivity;->finish()V

    goto :goto_0

    .line 57
    :cond_2
    invoke-direct {p0}, Lcom/iflytek/viafly/RequestPermissionActivity;->a()V

    .line 60
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 61
    invoke-virtual {p0}, Lcom/iflytek/viafly/RequestPermissionActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, -0x80000000

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 62
    invoke-virtual {p0}, Lcom/iflytek/viafly/RequestPermissionActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x4000000

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 63
    invoke-virtual {p0}, Lcom/iflytek/viafly/RequestPermissionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0078

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 64
    .local v0, "statusBarColor":I
    invoke-virtual {p0}, Lcom/iflytek/viafly/RequestPermissionActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 4

    .prologue
    .line 149
    const-string/jumbo v0, "RequestPermissionActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDestroy | threadId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-boolean v0, p0, Lcom/iflytek/viafly/RequestPermissionActivity;->c:Z

    if-nez v0, :cond_0

    .line 152
    invoke-direct {p0}, Lcom/iflytek/viafly/RequestPermissionActivity;->b()V

    .line 154
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 155
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 80
    const-string/jumbo v0, "RequestPermissionActivity"

    const-string/jumbo v1, "onNewIntent"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 82
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    .line 113
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 114
    const-string/jumbo v0, "RequestPermissionActivity"

    const-string/jumbo v1, "onRequestPermissionsResult "

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    packed-switch p1, :pswitch_data_0

    .line 123
    :goto_0
    return-void

    .line 117
    :pswitch_0
    invoke-direct {p0}, Lcom/iflytek/viafly/RequestPermissionActivity;->b()V

    .line 118
    invoke-virtual {p0}, Lcom/iflytek/viafly/RequestPermissionActivity;->finish()V

    goto :goto_0

    .line 115
    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 86
    const-string/jumbo v0, "RequestPermissionActivity"

    const-string/jumbo v1, "onResume"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 88
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 159
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 160
    const-string/jumbo v0, "RequestPermissionActivity"

    const-string/jumbo v1, "onStop"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    return-void
.end method
