.class public Lakd;
.super Ljava/lang/Object;
.source "WeatherFuture.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lakd;->b:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .param p1, "forecateInfo"    # Ljava/lang/String;

    .prologue
    .line 19
    iput-object p1, p0, Lakd;->b:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lakd;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0
    .param p1, "addressName"    # Ljava/lang/String;

    .prologue
    .line 27
    iput-object p1, p0, Lakd;->a:Ljava/lang/String;

    .line 28
    return-void
.end method
