.class public Laal;
.super Ljava/lang/Object;
.source "YellowPageInfo.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Laal;->a:Ljava/lang/String;

    .line 11
    invoke-virtual {p0, p2}, Laal;->a(Ljava/lang/String;)V

    .line 12
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 27
    iput-object p1, p0, Laal;->b:Ljava/lang/String;

    .line 28
    return-void
.end method
