.class Lvy$a;
.super Ljava/lang/Object;
.source "BusinessManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;

.field final synthetic b:Lvy;


# direct methods
.method private constructor <init>(Lvy;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lvy$a;->b:Lvy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lvy;Lvy$1;)V
    .locals 0
    .param p1, "x0"    # Lvy;
    .param p2, "x1"    # Lvy$1;

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lvy$a;-><init>(Lvy;)V

    return-void
.end method
