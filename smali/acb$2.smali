.class final Lacb$2;
.super Ljava/lang/Object;
.source "StartNewInteractionHelperTemp.java"

# interfaces
.implements Lacs;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lacb;->a(Lacp;Laau;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lacp;


# direct methods
.method constructor <init>(Lacp;)V
    .locals 0

    .prologue
    .line 536
    iput-object p1, p0, Lacb$2;->a:Lacp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 541
    iget-object v0, p0, Lacb$2;->a:Lacp;

    const-string/jumbo v1, "telephone"

    invoke-interface {v0, v1}, Lacp;->reStartReco(Ljava/lang/String;)V

    .line 542
    return-void
.end method
