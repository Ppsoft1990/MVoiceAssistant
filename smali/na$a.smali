.class Lna$a;
.super Ljava/lang/Object;
.source "AuthenticationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lna;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field private static a:Lna;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    new-instance v0, Lna;

    invoke-direct {v0}, Lna;-><init>()V

    sput-object v0, Lna$a;->a:Lna;

    return-void
.end method

.method static synthetic a()Lna;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lna$a;->a:Lna;

    return-object v0
.end method
