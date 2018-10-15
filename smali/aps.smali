.class public Laps;
.super Lapo;
.source "MusicInfoResult.java"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field public n:J

.field public o:Ljava/lang/String;

.field public p:Z

.field public q:I

.field private r:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Lapo;-><init>()V

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Laps;->p:Z

    .line 35
    const/4 v0, -0x1

    iput v0, p0, Laps;->q:I

    return-void
.end method


# virtual methods
.method public c(Ljava/lang/String;)V
    .locals 0
    .param p1, "mStatus"    # Ljava/lang/String;

    .prologue
    .line 42
    iput-object p1, p0, Laps;->r:Ljava/lang/String;

    .line 43
    return-void
.end method
