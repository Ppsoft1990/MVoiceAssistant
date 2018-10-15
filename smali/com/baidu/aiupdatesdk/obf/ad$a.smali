.class public Lcom/baidu/aiupdatesdk/obf/ad$a;
.super Ljava/lang/Object;
.source "NdPackageParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/aiupdatesdk/obf/ad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:I

.field public d:Z

.field public e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-string/jumbo v0, "unknown"

    iput-object v0, p0, Lcom/baidu/aiupdatesdk/obf/ad$a;->a:Ljava/lang/String;

    .line 22
    const-string/jumbo v0, "unknown"

    iput-object v0, p0, Lcom/baidu/aiupdatesdk/obf/ad$a;->b:Ljava/lang/String;

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/aiupdatesdk/obf/ad$a;->c:I

    .line 24
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/aiupdatesdk/obf/ad$a;->d:Z

    .line 25
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/baidu/aiupdatesdk/obf/ad$a;->e:Ljava/lang/String;

    return-void
.end method
