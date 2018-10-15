.class final Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity$c;
.super Ljava/lang/Object;
.source "AbcUpgradeActivity.java"

# interfaces
.implements Lcom/cmcc/migusso/sdk/auth/TokenListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# static fields
.field public static a:I

.field public static b:I


# instance fields
.field private c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;",
            ">;"
        }
    .end annotation
.end field

.field private d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput v0, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity$c;->a:I

    const/4 v0, 0x2

    sput v0, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity$c;->b:I

    return-void
.end method

.method public constructor <init>(Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity$c;->c:Ljava/lang/ref/WeakReference;

    iput p2, p0, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity$c;->d:I

    return-void
.end method


# virtual methods
.method public final onGetTokenComplete(Lorg/json/JSONObject;)V
    .locals 3

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity$c;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const-string/jumbo v0, "AbcUpgradeActivity"

    const-string/jumbo v1, " is null or finished"

    invoke-static {v0, v1}, Lcom/cmcc/util/LogUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget v1, p0, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity$c;->d:I

    if-nez v1, :cond_3

    invoke-static {v0, p1}, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;->a(Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_3
    iget v1, p0, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity$c;->d:I

    sget v2, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity$c;->a:I

    if-ne v1, v2, :cond_4

    invoke-static {v0, p1}, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;->b(Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_4
    iget v1, p0, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity$c;->d:I

    sget v2, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity$c;->b:I

    if-ne v1, v2, :cond_1

    invoke-static {v0, p1}, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;->c(Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;Lorg/json/JSONObject;)V

    goto :goto_0
.end method
