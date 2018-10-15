.class public final Lws;
.super Ljava/lang/Object;
.source "ResponseTimeLogHelper.java"


# static fields
.field private static a:Lws;

.field private static final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lnk;->a:Ljava/lang/String;

    sput-object v0, Lws;->b:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method public static a()Lws;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lws;->a:Lws;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lws;

    invoke-direct {v0}, Lws;-><init>()V

    sput-object v0, Lws;->a:Lws;

    .line 33
    :cond_0
    sget-object v0, Lws;->a:Lws;

    return-object v0
.end method


# virtual methods
.method public a(J)V
    .locals 0
    .param p1, "time"    # J

    .prologue
    .line 44
    return-void
.end method

.method public b(J)V
    .locals 0
    .param p1, "time"    # J

    .prologue
    .line 67
    return-void
.end method

.method public c(J)V
    .locals 0
    .param p1, "time"    # J

    .prologue
    .line 90
    return-void
.end method

.method public d(J)V
    .locals 0
    .param p1, "time"    # J

    .prologue
    .line 112
    return-void
.end method

.method public e(J)V
    .locals 0
    .param p1, "time"    # J

    .prologue
    .line 135
    return-void
.end method
