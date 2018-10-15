.class public Lcom/iflytek/common/dialogplayer/utility/APNMgr;
.super Ljava/lang/Object;
.source "APNMgr.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/common/dialogplayer/utility/APNMgr$NetworkType;
    }
.end annotation


# static fields
.field static a:Lcom/iflytek/common/dialogplayer/utility/APNMgr;

.field private static final b:Landroid/net/Uri;

.field private static final c:Landroid/net/Uri;

.field private static final d:Landroid/net/Uri;

.field private static final e:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-string/jumbo v0, "content://telephony/carriers"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/iflytek/common/dialogplayer/utility/APNMgr;->b:Landroid/net/Uri;

    .line 32
    const-string/jumbo v0, "content://telephony/carriers/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/iflytek/common/dialogplayer/utility/APNMgr;->c:Landroid/net/Uri;

    .line 33
    const-string/jumbo v0, "content://telephony/carriers/preferapn2"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/iflytek/common/dialogplayer/utility/APNMgr;->d:Landroid/net/Uri;

    .line 34
    const-string/jumbo v0, "content://telephony/carriers/current"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/iflytek/common/dialogplayer/utility/APNMgr;->e:Landroid/net/Uri;

    .line 36
    const/4 v0, 0x0

    sput-object v0, Lcom/iflytek/common/dialogplayer/utility/APNMgr;->a:Lcom/iflytek/common/dialogplayer/utility/APNMgr;

    return-void
.end method
