.class public Lads;
.super Ljava/lang/Object;
.source "ResultHandlerFactory.java"


# static fields
.field private static a:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 23
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lads;->a:Ljava/util/HashSet;

    .line 25
    sget-object v0, Lads;->a:Ljava/util/HashSet;

    const-string/jumbo v1, "dialog"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 26
    sget-object v0, Lads;->a:Ljava/util/HashSet;

    const-string/jumbo v1, "app"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 27
    sget-object v0, Lads;->a:Ljava/util/HashSet;

    const-string/jumbo v1, "music"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 28
    sget-object v0, Lads;->a:Ljava/util/HashSet;

    const-string/jumbo v1, "weather"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 29
    sget-object v0, Lads;->a:Ljava/util/HashSet;

    const-string/jumbo v1, "cmread_listenbook_search"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 35
    return-void
.end method

.method public static a(Ljava/lang/String;)Ladr;
    .locals 1
    .param p0, "focus"    # Ljava/lang/String;

    .prologue
    .line 42
    const-string/jumbo v0, "dialog"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    new-instance v0, Lafd;

    invoke-direct {v0}, Lafd;-><init>()V

    .line 54
    :goto_0
    return-object v0

    .line 44
    :cond_0
    const-string/jumbo v0, "app"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 45
    new-instance v0, Ladz;

    invoke-direct {v0}, Ladz;-><init>()V

    goto :goto_0

    .line 46
    :cond_1
    const-string/jumbo v0, "music"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 47
    new-instance v0, Lafr;

    invoke-direct {v0}, Lafr;-><init>()V

    goto :goto_0

    .line 48
    :cond_2
    const-string/jumbo v0, "weather"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 49
    new-instance v0, Lagf;

    invoke-direct {v0}, Lagf;-><init>()V

    goto :goto_0

    .line 50
    :cond_3
    const-string/jumbo v0, "cmread_listenbook_search"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 51
    new-instance v0, Lafm;

    invoke-direct {v0}, Lafm;-><init>()V

    goto :goto_0

    .line 54
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 38
    sget-object v0, Lads;->a:Ljava/util/HashSet;

    return-object v0
.end method
