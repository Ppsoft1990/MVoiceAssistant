.class public Lavo;
.super Ljava/lang/Object;
.source "AlarmNews.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "imageURL"    # Ljava/lang/String;
    .param p2, "newsURL"    # Ljava/lang/String;
    .param p3, "newsTitle"    # Ljava/lang/String;

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lavo;->a:Ljava/lang/String;

    .line 15
    iput-object p2, p0, Lavo;->b:Ljava/lang/String;

    .line 16
    iput-object p3, p0, Lavo;->c:Ljava/lang/String;

    .line 17
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lavo;->b:Ljava/lang/String;

    return-object v0
.end method
