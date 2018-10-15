.class public Lamu;
.super Ljava/lang/Object;
.source "BookCloseModel.java"


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;I)V
    .locals 0
    .param p1, "level"    # I
    .param p2, "levelDesc"    # Ljava/lang/String;
    .param p3, "levelTime"    # I

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput p1, p0, Lamu;->a:I

    .line 18
    iput-object p2, p0, Lamu;->b:Ljava/lang/String;

    .line 19
    iput p3, p0, Lamu;->c:I

    .line 20
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lamu;->a:I

    return v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lamu;->c:I

    return v0
.end method
