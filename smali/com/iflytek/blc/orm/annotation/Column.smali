.class public interface abstract annotation Lcom/iflytek/blc/orm/annotation/Column;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/iflytek/blc/orm/annotation/Column;
        indexName = ""
        length = 0x0
        type = ""
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->FIELD:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract indexName()Ljava/lang/String;
.end method

.method public abstract length()I
.end method

.method public abstract name()Ljava/lang/String;
.end method

.method public abstract type()Ljava/lang/String;
.end method
