.class public Lajy;
.super Ljava/lang/Object;
.source "CityWeatherResult.java"


# instance fields
.field private a:Lajx;

.field private b:Ljava/lang/String;

.field private c:Lakd;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lakd;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lajy;->c:Lakd;

    return-object v0
.end method

.method public a(Lajx;)V
    .locals 0
    .param p1, "weatherCard"    # Lajx;

    .prologue
    .line 23
    iput-object p1, p0, Lajy;->a:Lajx;

    .line 24
    return-void
.end method

.method public a(Lakd;)V
    .locals 0
    .param p1, "weatherFuture"    # Lakd;

    .prologue
    .line 16
    iput-object p1, p0, Lajy;->c:Lakd;

    .line 17
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .param p1, "errorCode"    # Ljava/lang/String;

    .prologue
    .line 35
    iput-object p1, p0, Lajy;->b:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public b()Lajx;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lajy;->a:Lajx;

    return-object v0
.end method
