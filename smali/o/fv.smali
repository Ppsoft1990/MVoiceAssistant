.class public final Lo/fv;
.super Ljava/lang/Object;
.source "MiguUI.java"


# static fields
.field private static y:Lo/fv;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Z

.field public d:Z

.field public e:Z

.field public f:I

.field public g:I

.field public h:Z

.field public i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lo/fw;",
            ">;"
        }
    .end annotation
.end field

.field public j:Lcom/cmcc/migusso/sdk/common/TokenProcess;

.field public k:Lcom/cmcc/migusso/sdk/common/BoolCallBack;

.field public l:Lcom/cmcc/migusso/sdk/common/BoolCallBack;

.field public m:Lcom/cmcc/migusso/sdk/common/ICallBack;

.field public n:Lcom/cmcc/migusso/sdk/common/ICallBack;

.field public o:Lcom/cmcc/migusso/sdk/common/JSONCallBack;

.field public p:Lcom/cmcc/migusso/sdk/common/ICallBack;

.field public q:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public r:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public s:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public t:Z

.field public u:Ljava/lang/String;

.field public v:Ljava/lang/String;

.field public w:Lcom/cmcc/migusso/sdk/auth/TokenListener;

.field public x:Lcom/cmcc/migusso/sdk/auth/QrResultListener;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/fv;->c:Z

    iput-boolean v1, p0, Lo/fv;->d:Z

    iput-boolean v1, p0, Lo/fv;->e:Z

    iput-boolean v1, p0, Lo/fv;->h:Z

    iput-object v2, p0, Lo/fv;->q:Ljava/util/HashMap;

    iput-object v2, p0, Lo/fv;->r:Ljava/util/HashMap;

    iput-object v2, p0, Lo/fv;->s:Ljava/util/HashMap;

    return-void
.end method

.method public static a()Lo/fv;
    .locals 1

    sget-object v0, Lo/fv;->y:Lo/fv;

    if-nez v0, :cond_0

    new-instance v0, Lo/fv;

    invoke-direct {v0}, Lo/fv;-><init>()V

    sput-object v0, Lo/fv;->y:Lo/fv;

    :cond_0
    sget-object v0, Lo/fv;->y:Lo/fv;

    return-object v0
.end method
