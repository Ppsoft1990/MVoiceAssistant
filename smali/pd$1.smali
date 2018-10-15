.class final Lpd$1;
.super Ljava/lang/Object;
.source "PermissionHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpd;->a(Landroid/content/Context;Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(JLandroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 139
    iput-wide p1, p0, Lpd$1;->a:J

    iput-object p3, p0, Lpd$1;->b:Landroid/content/Context;

    iput-object p4, p0, Lpd$1;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const-wide/16 v2, 0x3e8

    .line 143
    iget-wide v4, p0, Lpd$1;->a:J

    cmp-long v4, v4, v2

    if-gez v4, :cond_0

    .line 145
    .local v2, "sleeeptime":J
    :goto_0
    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    :goto_1
    :try_start_1
    new-instance v0, Landroid/content/Intent;

    iget-object v4, p0, Lpd$1;->b:Landroid/content/Context;

    const-class v5, Lcom/iflytek/viafly/permissionguide/PermissionTipDialog;

    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 152
    .local v0, "dialogIntent":Landroid/content/Intent;
    const-string/jumbo v4, "TIPS_INTENT_EXTRA"

    iget-object v5, p0, Lpd$1;->c:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 153
    const/high16 v4, 0x10000000

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 155
    iget-object v4, p0, Lpd$1;->b:Landroid/content/Context;

    invoke-virtual {v4, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 156
    const-string/jumbo v4, "PermissionHelper"

    const-string/jumbo v5, "showPermissionTip | start PermissionTipDialog"

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 160
    .end local v0    # "dialogIntent":Landroid/content/Intent;
    :goto_2
    return-void

    .line 143
    .end local v2    # "sleeeptime":J
    :cond_0
    iget-wide v2, p0, Lpd$1;->a:J

    goto :goto_0

    .line 146
    .restart local v2    # "sleeeptime":J
    :catch_0
    move-exception v1

    .line 147
    .local v1, "e":Ljava/lang/InterruptedException;
    const-string/jumbo v4, "PermissionHelper"

    const-string/jumbo v5, "showPermissionTip | sleep error"

    invoke-static {v4, v5, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 157
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v1

    .line 158
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "PermissionHelper"

    const-string/jumbo v5, ""

    invoke-static {v4, v5, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method
