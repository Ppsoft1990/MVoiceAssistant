.class public Laac;
.super Ljava/lang/Object;
.source "PhoneNumMarkedType.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "num"    # Ljava/lang/String;
    .param p2, "markedType"    # Ljava/lang/String;
    .param p3, "numType"    # Ljava/lang/String;
    .param p4, "markTime"    # Ljava/lang/String;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Laac;->a:Ljava/lang/String;

    .line 22
    iput-object p2, p0, Laac;->b:Ljava/lang/String;

    .line 23
    iput-object p3, p0, Laac;->c:Ljava/lang/String;

    .line 24
    iput-object p4, p0, Laac;->d:Ljava/lang/String;

    .line 25
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Laac;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Laac;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Laac;->b:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Laac;->d:Ljava/lang/String;

    return-object v0
.end method
