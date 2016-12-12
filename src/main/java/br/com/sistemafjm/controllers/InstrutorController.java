package br.com.sistemafjm.controllers;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import br.com.sistemafjm.Daos.AparelhoDAO;
import br.com.sistemafjm.Daos.ExercicioAparelhoDAO;
import br.com.sistemafjm.Daos.ExercicioDAO;
import br.com.sistemafjm.Daos.FichaTreinoDAO;
import br.com.sistemafjm.Daos.FichatreinoExercicioAparelhoDao;
import br.com.sistemafjm.Daos.InstrutorDAO;
import br.com.sistemafjm.Daos.MedidasCorporaisDAO;
import br.com.sistemafjm.Daos.UsuarioDAO;
import br.com.sistemafjm.Models.Aparelho;
import br.com.sistemafjm.Models.Exercicio;
import br.com.sistemafjm.Models.Exercicio_Aparelho;
import br.com.sistemafjm.Models.FichaTreino;
import br.com.sistemafjm.Models.FichatreinoExercicioAparelho;
import br.com.sistemafjm.Models.InstrutorModelo;
import br.com.sistemafjm.Models.MedidasCorporais;
import br.com.sistemafjm.Models.ObjetivoEnum;
import br.com.sistemafjm.Models.PertenceSerieEnum;
import br.com.sistemafjm.Models.SerieEnum;
import br.com.sistemafjm.Models.SexoEnum;
import br.com.sistemafjm.Models.StatusEnum;
import br.com.sistemafjm.Models.UsuarioModelo;

@Controller
@RequestMapping("/instrutor")
public class InstrutorController {

	@Autowired
	private InstrutorDAO instrutorDAO;

	@Autowired
	private UsuarioDAO usuarioDAO;

	@Autowired
	private AparelhoDAO aparelhoDAO;

	@Autowired
	private ExercicioDAO exercicioDAO;

	@Autowired
	private FichaTreinoDAO fichaTreinoDAO;

	@Autowired
	private MedidasCorporaisDAO medidasCorporaisDAO;

	@Autowired
	private ExercicioAparelhoDAO exercicio_aparelhoDao;

	@Autowired
	private FichatreinoExercicioAparelhoDao fichatreinoExercicioAparelhoDao;

	/**
	 * Entra na página do formulário para adicionar/cadastrar um instrutor
	 *
	 * @return ModelAndView
	 */
	@RequestMapping("/cadastro")
	public ModelAndView cadastroInstrutor() {

		ModelAndView mv = new ModelAndView("instrutor/cadastro");
		mv.addObject("status", StatusEnum.values());
		mv.addObject("sexo", SexoEnum.values());
		System.out.println("Entrou no cadastroInstrutor");
		return mv;
	}

	/**
	 * Adiciona novo instrutor no banco
	 *
	 * @param Instrutor
	 *            instrutor
	 * @param BindingResult
	 *            result
	 * @return ModelAndView para cadastro de novo instutor
	 *
	 */
	@RequestMapping(value = "/cadastrando", method = RequestMethod.POST)
	public ModelAndView cadastrandoInstrutor(InstrutorModelo instrutor) {

		System.out.println("Entrou no cadastrarInstrutor");
		ModelAndView mv = new ModelAndView("redirect:/instrutor/cadastro");
		System.out.println(instrutor);
		instrutorDAO.cadastrarInstrutor(instrutor);
		return mv;
	}

	/**
	 * Entra na página do formulário para adicionar/cadastrar um aparelho
	 *
	 * @return
	 */
	@RequestMapping(value = "/cadastroAparelho")
	public ModelAndView cadastroAparelho() {
		ModelAndView mv = new ModelAndView("instrutor/cadastroAparelho");

		ArrayList<Aparelho> aparelhos = aparelhoDAO.recuperarAparelhosDoBanco();
		ArrayList<Exercicio> exercicios = exercicioDAO.recuperarExerciciosDoBanco();

		mv.addObject("aparelhos", aparelhos);
		mv.addObject("exercicios", exercicios);
		return mv;
	}

	/**
	 *
	 * Entra na página do usuário com o Id definido. Com Link para criar nova
	 * ficha e adicionar novas medidas, ou listar fichas ou listar medidas
	 *
	 * @param Id
	 *            do usuário
	 * @return ModelAndView com detalhes do usuário
	 */
	@RequestMapping("/usuario-{id}")
	public ModelAndView detalhes(@PathVariable("id") Integer Id) {

		ModelAndView mv = new ModelAndView("instrutor/detalhesUsuario");
		UsuarioModelo usuario = usuarioDAO.buscaUsuario(Id);
		List<InstrutorModelo> instrutores = instrutorDAO.recuperarInstrutores();
		System.out.println(usuario);
		mv.addObject("usuario", usuario);
		mv.addObject("instrutores", instrutores);

		return mv;
	}

	@RequestMapping(value = "/listaUsuarios")
	public ModelAndView deletarUsuario(Integer id) {
		UsuarioModelo usuario = usuarioDAO.buscaUsuario(id);
		usuarioDAO.deletarUsuario(usuario);
		ModelAndView mv = new ModelAndView("/listaUsuarios");
		return mv;
	}

	/**
	 * Entra na página do formulário para adicionar/cadastrar o cabeçalho da
	 * ficha de treino
	 *
	 * @param id
	 *            do usuário
	 * @param FichaTreino
	 *            ficha
	 * @return ModelAndView de formulário para adição de exercícios na ficha
	 */
	@RequestMapping(value = "/usuario-{Id}/novaFicha/exercicios/add", method = RequestMethod.POST)
	public ModelAndView cadastrandoCabecalhoFicha(@PathVariable("Id") Integer id, FichaTreino ficha) {
		System.out.println("Entrou no cadastrandoCabecalhoFicha");

		UsuarioModelo usuario = usuarioDAO.buscaUsuario(id);
		ficha.setUsuario(usuario);

		InstrutorModelo instrutor = instrutorDAO.buscaInstrutor(ficha.getInstrutor().getId());
		ficha.setInstrutor(instrutor);

		fichaTreinoDAO.cadastrarFicha(ficha);
		ModelAndView mv = new ModelAndView("instrutor/exercicios");

		System.out.println(ficha);

		PertenceSerieEnum[] values = PertenceSerieEnum.values();
		PertenceSerieEnum[] valores = new PertenceSerieEnum[ficha.getSerie().getNumero()];
		for (int i = 0; i < valores.length; i++) {
			valores[i] = values[i];
		}

		ArrayList<Exercicio_Aparelho> exercicios = exercicio_aparelhoDao.recuperarExerciciosDoBanco();
		Exercicio_Aparelho exercicio_Aparelho = new Exercicio_Aparelho();

		mv.addObject("seriesPertencentes", valores);
		mv.addObject("exercicios", exercicios);
		mv.addObject("exercicio_Aparelho", exercicio_Aparelho);
		mv.addObject("usuario", usuario);
		mv.addObject("ficha", ficha);
		return mv;
	}

	/**
	 * Adiciona corpo da ficha de treino
	 *
	 * @param Id
	 *            do usuário
	 * @param FichaTreino
	 *            ficha
	 * @return
	 */
	@RequestMapping("/usuario-{Id}/novaFicha")
	public ModelAndView cadastrarNovaFicha(@PathVariable("Id") Integer Id, FichaTreino ficha) {
		System.out.println("Entrou no cadastrarNovaFicha");

		ModelAndView mv = new ModelAndView("instrutor/cadastroTreino");

		mv.addObject("series", SerieEnum.values());
		mv.addObject("objetivos", ObjetivoEnum.values());
		UsuarioModelo usuario = usuarioDAO.buscaUsuario(Id);
		ficha.setUsuario(usuario);
		System.out.println(ficha);
		mv.addObject("ficha", ficha);
		List<InstrutorModelo> instrutores = instrutorDAO.recuperarInstrutores();
		mv.addObject("instrutores", instrutores);

		return mv;
	}

	@RequestMapping("/usuario-{Id}/novaFicha/exercicios/adicionando")
	public ModelAndView adicionarExercicioFicha(@PathVariable("Id") Integer id, Integer fichaId,
			FichatreinoExercicioAparelho exercicio) {

		FichaTreino ficha = fichaTreinoDAO.buscaFicha(fichaId);
		exercicio.setFicha(ficha);
		ficha.add(exercicio);
		fichatreinoExercicioAparelhoDao.cadastrarExercicio(exercicio);
		fichaTreinoDAO.atualizarFicha(ficha);
		ficha = fichaTreinoDAO.buscaFicha(fichaId);
		ArrayList<Exercicio_Aparelho> exercicios = exercicio_aparelhoDao.recuperarExerciciosDoBanco();
		ArrayList<FichatreinoExercicioAparelho> fichaexercicios = fichatreinoExercicioAparelhoDao
				.recuperarFichatreinoExercicioAparelhoDoBanco();

		ModelAndView mv = new ModelAndView("instrutor/exercicios");

		PertenceSerieEnum[] values = PertenceSerieEnum.values();
		PertenceSerieEnum[] valores = new PertenceSerieEnum[ficha.getSerie().getNumero()];
		for (int i = 0; i < valores.length; i++) {
			valores[i] = values[i];
		}

		mv.addObject("seriesPertencentes", valores);
		mv.addObject("exercicios", exercicios);
		mv.addObject("fichaexercicios", fichaexercicios);
		mv.addObject("ficha", ficha);
		return mv;
	}

	@RequestMapping(value = "/ficha-{Id}/detalhes")
	public ModelAndView detalhesFicha(@PathVariable("Id") Integer id) {
		ModelAndView mv = new ModelAndView("instrutor/ficha");

		FichaTreino ficha = fichaTreinoDAO.buscaFicha(id);

		mv.addObject("ficha", ficha);
		return mv;
	}

	@RequestMapping(value = "/listaFichas", method = RequestMethod.GET)
	public ModelAndView listaFichas() {
		ModelAndView mv = new ModelAndView("instrutor/listaFichas");
		ArrayList<FichaTreino> fichas = fichaTreinoDAO.recuperarFichasDoBanco();
		mv.addObject("fichas", fichas);
		return mv;
	}

	@RequestMapping(value = "/listaExercicios", method = RequestMethod.GET)
	public ModelAndView listaExercicios() {
		ModelAndView mv = new ModelAndView("instrutor/listaExercicios");
		ArrayList<Exercicio_Aparelho> exercicios = exercicio_aparelhoDao.recuperarExerciciosDoBanco();
		mv.addObject("exercicios", exercicios);
		return mv;
	}

	/**
	 * Adiciona novo aparelho no banco
	 *
	 * @param Aparelho
	 *            aparelho
	 * @param BindingResult
	 *            result
	 * @return ModelAndView
	 *
	 */
	@RequestMapping(value = "/cadastrandoAparelho", method = RequestMethod.POST)
	public ModelAndView cadastrandoAparelho(Aparelho aparelho) {

		System.out.println(aparelho);
		aparelhoDAO.cadastrarAparelho(aparelho);

		ModelAndView mv = new ModelAndView("redirect:cadastroAparelho");

		return mv;
	}

	/**
	 * Adiciona novo exercício no banco
	 *
	 * @param exercicio
	 * @return ModelAndView
	 */
	@RequestMapping(value = "/cadastrandoExercicio", method = RequestMethod.POST)
	public ModelAndView cadastrandoExercicio(Exercicio exercicio) {

		System.out.println(exercicio);
		exercicioDAO.cadastrarExercicio(exercicio);

		ModelAndView mv = new ModelAndView("redirect:cadastroAparelho");

		return mv;
	}

	/**
	 * Entra na página de formulário para novas medidas
	 *
	 * @param Id
	 *            do usuario
	 * @return ModelAndView
	 */
	@RequestMapping("/usuario-{Id}/medidas")
	public ModelAndView cadastroNovasMedidas(@PathVariable("Id") Integer Id) {

		System.out.println("Entrando no cadastrar medidas");
		ModelAndView mv = new ModelAndView("instrutor/medidas");
		UsuarioModelo usuario = usuarioDAO.buscaUsuario(Id);
		mv.addObject("usuario", usuario);

		return mv;
	}

	/**
	 * Adiciona novo exercício no banco
	 *
	 * @param exercicio
	 * @return ModelAndView
	 */
	@RequestMapping(value = "/cadastrandoExercicioAparelho", method = RequestMethod.POST)
	public ModelAndView cadastrandoExercicioAparelho(Exercicio_Aparelho exercicio) {

		System.out.println(exercicio);
		exercicio_aparelhoDao.cadastrarExercicio(exercicio);
		ModelAndView mv = new ModelAndView("redirect:cadastroAparelho");
		return mv;
	}

	/**
	 * Adiciona novas medidas do usuário no banco
	 *
	 * @param Id
	 *            do usuario
	 * @param MedidasCorporais
	 *            medidas do usuario
	 * @return ModelAndView
	 */
	@RequestMapping(value = "/entradaDeMedidas", method = RequestMethod.POST)
	public ModelAndView cadastrandoNovasMedidas(Integer Id, MedidasCorporais medidas) {

		if (medidas.getUsuario() == null) {
			medidas.setUsuario(usuarioDAO.buscaUsuario(Id));
		}

		System.out.println("Entrando no cadastrando medidas");

		System.out.println(medidas);

		ModelAndView mv = new ModelAndView("redirect:usuario-{Id}/medidas");
		mv.addObject("Id", Id);

		System.out.println(medidas);

		medidasCorporaisDAO.cadastrarMedidas(medidas);

		return mv;
	}

	/**
	 * Recupera/lista os instrutores do banco
	 *
	 * @return ModelAndView
	 */
	@RequestMapping(value = "/listaInstrutor", method = RequestMethod.GET)
	public ModelAndView listarInstrutores() {

		ModelAndView mv = new ModelAndView("instrutor/listaInstrutor");
		List<InstrutorModelo> instrutores = instrutorDAO.recuperarInstrutores();

		mv.addObject("instrutores", instrutores);
		return mv;

	}

	/**
	 *
	 * Recupera/lista os usuários do banco
	 *
	 * @return ModelAndView com todos os usuários do banco
	 */
	@RequestMapping(value = "/listaUsuarios", method = RequestMethod.GET)
	public ModelAndView listarUsuarios() {
		ModelAndView mv = new ModelAndView("instrutor/listaUsuarios");
		List<UsuarioModelo> usuarios = usuarioDAO.recuperarUsuariosDoBanco();

		mv.addObject("usuarios", usuarios);
		return mv;

	}

	@RequestMapping(value = "/listaUsuariosComNome", method = RequestMethod.GET)
	public ModelAndView listarUsuariosComNome(String nome) {
		System.out.println(nome);
		ModelAndView mv = new ModelAndView("instrutor/listaUsuarios");
		List<UsuarioModelo> usuarios = usuarioDAO.recuperarUsuariosComNome(nome);

		mv.addObject("usuarios", usuarios);
		return mv;

	}

	/**
	 * Recupera/lista as medidas do usuario tem que ter o parametro com o id
	 *
	 * @return
	 */
	@RequestMapping("/listaMedidas")
	public ModelAndView listaMedidas() {

		ArrayList<MedidasCorporais> medidas = medidasCorporaisDAO.recuperarMedidasDoBanco();
		ModelAndView mv = new ModelAndView("/instrutor/listaMedidas");
		mv.addObject("medidas", medidas);
		return mv;
	}

	@RequestMapping(value = "/removeMedida")
	public ModelAndView removeMedida(Integer fichaId) {

		medidasCorporaisDAO.removerMedidas(fichaId);
		ModelAndView mv = new ModelAndView("redirect:/instrutor/listaMedidas");
		return mv;
	}
}
