import 'package:belahododfinal/Core/error/network_exceptions.dart';
import 'package:belahododfinal/Features/Visitor/Home%20Page%20Visitor/HomeScreen%20Visitor/data/Model/sectionvisitorentity.dart';
import 'package:dartz/dartz.dart';

abstract class BaseRepositorySectionVisitor {
  Future<Either<NetworkExceptions, SectionVisitorEntity>> sectionsVisitor();
}
